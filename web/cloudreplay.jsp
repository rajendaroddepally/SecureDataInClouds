<%@page import="action.mailsendd"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="action.Dbcon"%>
<%
              
            
            String s = request.getQueryString();
            
            int i = 1;
            Integer r = null;
            Connection con = Dbcon.getCon();
            Statement st = con.createStatement();
            Statement st1 = con.createStatement();
            ResultSet rs = st.executeQuery("select * from filrequest  where id='" + s + "'");
            while (rs.next()) {
                
                       String id=rs.getString("id");
                       String mid=rs.getString("fid");
                       String fcaptionn=rs.getString("caption");
                       String fname =rs.getString("descp");
                       String masterky =rs.getString("masterky");
                       String privatkey =rs.getString("privatkey");
                       String key =( "    CAPTION: "+fcaptionn+"     MASTERKY: "+masterky+"       PRIVATEKEY: "+privatkey);
                       
                       
                       String umailidd =rs.getString("emailid");
                       String umailid =("pavithrajpinfotech@gmail.com");
                       System.out.println("unotmail"+umailidd);
                       System.out.println("correcttmail"+umailidd);
                       String fstatus="requestrecived";
                       String sub="cloud/proxy";
                       
                       String fstatuss="replayed";
                      
                       
                      
                      mailsendd.sendMail(key, sub, umailidd);
                   
                       
                       
                   int up = st1.executeUpdate("update filrequest set requeststatus ='" +fstatuss+ "' where id = '" + s + "'");
            if (up != 0) {
                response.sendRedirect("clouduserrequest.jsp?msg=imageview");
                System.out.println("updated sucess..!");
            }
                           
           
            
           
             }            
        %>