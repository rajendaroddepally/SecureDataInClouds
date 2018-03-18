/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import com.oreilly.servlet.MultipartRequest;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import action.Dbcon;
import action.Ftpcon;
import action.AESencrp;
import java.security.SecureRandom;
import java.sql.PreparedStatement;
import java.util.Random;

/**
 *
 * @author java4
 */
public class uploadfile extends HttpServlet {

    File file;
    final String filepath = "E:/";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
           
            MultipartRequest m = new MultipartRequest(request, filepath);
            File file=m.getFile("file");
           String filename=file.getName();
            String fname = m.getParameter("fname");
            String fedid = m.getParameter("fedid");
            String mastkey = m.getParameter("mastkey");
             String privark =m.getParameter("privark");
      
            Connection con = Dbcon.getCon();
          
            
            BufferedReader br = new BufferedReader(new FileReader(filepath+ filename));
            StringBuffer sb = new StringBuffer();
            String temp = null;

            while ((temp = br.readLine()) != null) {
                sb.append(temp);
            }
           
            AESencrp TDES = new AESencrp();
             String normal=sb.toString();
            String TDESal = TDES.encrypt(sb.toString());
            FileWriter fw = new FileWriter(file);
            String filenames = file.getName();
            String prostatus="notencrypt";
             HttpSession ses = request.getSession();
            String name = ses.getAttribute("ousername").toString();
           fw.write(TDESal);
            fw.close();
            System.out.println("ceaser" + TDESal);
              
            boolean status = new Ftpcon().upload(file);
            System.out.println("file upload to cloud -------->>>" + status);
            if (status) {

                String query = "insert into fileupload (fname,masterky,privatkey,file,enkfiles,fileid,fnames,prosystatus,Ownername)values (?,?,?,?,?,?,?,?,?)";
                PreparedStatement preparedStmt = con.prepareStatement(query);
                preparedStmt.setString(1, fname);
                preparedStmt.setString(2, mastkey);
                preparedStmt.setString(3, privark);
                preparedStmt.setString(4, normal);
                preparedStmt.setString(5, TDESal);
                preparedStmt.setString(6, fedid);
                preparedStmt.setString(7, filenames);
                preparedStmt.setString(8, prostatus);
                preparedStmt.setString(9, name);
               
               
                boolean sd = preparedStmt.execute();
                System.out.println(sd);
                if (sd = false) {
                    response.sendRedirect("ownerwelcom.jsp?msg=File_upload_to_cloud");

                } else {
                    response.sendRedirect("ownerwelcom.jsp?msg=File_upload_to_cloud_Successfully");
                }
            } else {
            }

        } catch (Exception e) {
            out.println(e);
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
