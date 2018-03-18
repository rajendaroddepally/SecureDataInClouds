<%-- 
    Document   : verify
    Created on : Oct 6, 2015, 12:01:52 PM
    Author     : java1
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="action.Dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
    
      HttpSession sess = request.getSession();
            String userid = sess.getAttribute("ufid").toString();
        String sql = "select * from fileupload where id='"+userid+"'";
        String privatekey = request.getParameter("pkey");
       System.out.println("key"+privatekey);
       System.out.println("id"+userid);
        Connection con1 = Dbcon.getCon();
         Statement st =con1.createStatement();
        ResultSet rs = st.executeQuery(sql);
        if(rs.next()){
            String rpkey = rs.getString("privatkey");
            if(privatekey.equals(rpkey)){
                response.sendRedirect("keyverirfi4.jsp");
            }else{
                response.sendRedirect("keyverificc2.jsp?Your_key_is_not_valid");
            }
        }

    %>
