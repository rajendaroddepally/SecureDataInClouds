<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="action.Dbcon"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SecRBAC:_Secure_data in the cloud </title>
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/textfeild.css"/>
<link rel="stylesheet" type="text/css" href="css/textb.css" />
<link rel="stylesheet" type="text/css" href="css/table1.css" />
</head>
<body>
<div class="header-wrapper">
  <div class="header">
    <div class="logo">
     <h1 style="font-family: Castellar;color: 	#20B2AA;font-size: 30px">SecRBAC: Secure data in the Clouds</h1>
    </div>
    <!---logo ends here -->
    <div class="menu">
      <ul>
       <li><a class="active" href="index.jsp">Home</a>me</li>
        <li><a href="clouuserdet.jsp">USER</a></li>
        <li><a href="cloudowner.jsp">OWNER</a></li>
        <li><a href="fldetail.jsp">FILE</a></li>
        <li><a href="proxy.jsp">proxy</a></li>
       
      </ul>
    </div>
    <!--- menu ends here -->
  </div>
  <!---headerends here -->
</div>
<!---header-wrapper-ends here -->
<div class="clear"></div>
<div class="banner-wrapper">
  <div class="banner">
    <div class="banner-image"> 
       <center><h1 style="font-size: 40px;color:#2F4F4F;font-family:Algerian;">USER DETAILS</h1></center>
         <div>
                   
                  <div class="CSSTableGenerator" style="width:900px;height: 300px;overflow: auto">
             <table>
                 <tr><td>ID</td><td>USERNAME</td><td>MAILID</td><td>GENDER</td><td>DATE</td><td>PHONE</td><td>LOCATION</td></tr>
               
       
        
        <%
        String status="distributed";
        Connection con = Dbcon.getCon();
    Statement st = con.createStatement();
         ResultSet rs = st.executeQuery("select * from userregi   ");
                       while (rs.next()) {
                           
                            String id=rs.getString("id");
                           String username=rs.getString("username");
                           String emailid =rs.getString("emailid");
                           String gender =rs.getString("gender");
                           String date=rs.getString("date");
                           String phone =rs.getString("phone");
                           String location =rs.getString("location");
                           
                            
                           
        %>
        
       
         
        
        <tr>
            <td style="color:#B22222"><%=id%></td>
            <td style="color:#B22222"><%=username%></td>
            <td  style="color:#B22222"><%=emailid%></td>
            <td  style="color:#B22222"><%=gender%></td>
            <td style="color:#B22222"><%=date%></td>
            <td style="color:#B22222"><%=phone%></td>
            <td style="color:#B22222"><%=location%></td>
           
            
           
            
            
                    
                    
                    <%
                            
                        }
                        
                    %>
                    </table>
            </div>
            
                   
</div>
       
    
    </div>
    
   
    
    <!---banner-image ends here-->
  </div>
  <!---bannerends here-->
</div>
<!---banner-wrapper ends here-->
<div class="clear"></div>

<!---container ends here-->


<!---content-2 ends here-->

</div>
<!---content-3 ends here-->
</div>
<!---container ends here-->
<div class="clear"></div>

<div class="footer-wrapper">
  <div class="footer">
    <div class="footer-content">
   	 
    </div>
      <div class="footer-content">
      	
    </div>
      
      <div class="footer-content">
       
     </div>
     
  
         
      
      
  </div>
</div>
<!---footer-wrapper ends here-->
</body>
</html>
