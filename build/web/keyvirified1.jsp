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
        String masterkey = request.getParameter("mkey");
       System.out.println("key"+masterkey);
       System.out.println("id"+userid);
        Connection con1 = Dbcon.getCon();
         Statement st =con1.createStatement();
        ResultSet rs = st.executeQuery(sql);
        if(rs.next()){
            String rmkey = rs.getString("masterky");
            if(masterkey.equals(rmkey)){
                response.sendRedirect("keyverificc2.jsp");
            }else{
                response.sendRedirect("filerequest3.jsp?Your_key_is_not_valid");
            }
        }

    %>
