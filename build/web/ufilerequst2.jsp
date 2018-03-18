<%-- 
    Document   : reranking3
    Created on : Aug 20, 2015, 3:59:23 PM
    Author     : java1
--%>

<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="action.Dbcon"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.InputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

        <%
              
            
           
          
            String s = request.getQueryString();
            String status = "notreplay";
            
             HttpSession ses = request.getSession();
            String emailid = ses.getAttribute("uemailidd").toString();
            String uname = ses.getAttribute("username").toString();
            
            int i = 1;
            Integer r = null;
            Connection con = Dbcon.getCon();
            Statement st = con.createStatement();
            Statement st1 = con.createStatement();
            ResultSet rs = st.executeQuery("select * from fileupload  where id='" + s + "'");
            while (rs.next()) {
                
                           String fid=rs.getString("id");
                           String caption=rs.getString("fname");
                           String descp =rs.getString("fileid");
                           String fnmae =rs.getString("fnames");
                           String masterky =rs.getString("masterky");
                           String privatkey =rs.getString("privatkey");
                           String statuss = "waiting";
                           
                           
           
            
           
            int up = st1.executeUpdate("insert into filrequest (fid,caption,descp,fnmae,masterky,privatkey,emailid,uname,requeststatus)values('"+fid+"','"+caption+"','"+descp+"','"+fnmae+"','"+masterky+"','"+privatkey+"','"+emailid+"','"+uname+"','"+statuss+"') ");
            if (up != 0) {
                response.sendRedirect("userfiledetail.jsp?msg=imageview");
                System.out.println("updated sucess..!");
            }
             }            
        %>
        
   