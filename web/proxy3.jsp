<%-- 
    Document   : reranking3
    Created on : Aug 20, 2015, 3:59:23 PM
    Author     : java1
--%>
<%@page import="com.sun.org.apache.xml.internal.security.utils.IgnoreAllErrorHandler"%>
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
            HttpSession ses = request.getSession();
            String s = ses.getAttribute("pid").toString();
            String prosystatus = "encrypted";
            String proxre = request.getParameter("prreencrypt");
            int i = 1;
            Integer r = null;
            Connection con = Dbcon.getCon();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from fileupload  where id='" +s+ "'");
            while (rs.next()) {
                
               
            }            
            String providestatus="sended";
           
           String prosre= ses.getAttribute("proreenc").toString();
            int up = st.executeUpdate("update fileupload set Ownername ='" +prosre+ "' , prosystatus ='"+prosystatus+"' where id = '" + s + "'");
            if (up != 0) {
                response.sendRedirect("proxy.jsp?msg=imageview");
                System.out.println("updated sucess..!");
            }
        %>
        
   