<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="action.Dbcon"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SecRBAC:_Secure_data in the cloud</title>
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
        <li><a href="userfiledetail.jsp">REQUEST SEND</a></li>
        <li><a href="filerequest3.jsp">RECEIVED</a></li>
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
       <center><h1 style="font-size: 40px;color:#2F4F4F;font-family:Algerian;">REQUEST FILE DETAILS</h1></center>
         <div>
                   
                  <div class="CSSTableGenerator" style="width:900px;height: 300px;overflow: auto">
             <table>
                 <tr><td>CAPTION</td><td>DESCRIP</td><td>FILENAME</td><td>STATUS</td><td>VIEW_FILE</td></tr>
               
       
        
        <%
         HttpSession ses = request.getSession();
         String uname = ses.getAttribute("username").toString();
        Connection con = Dbcon.getCon();
    Statement st = con.createStatement();
         ResultSet rs = st.executeQuery("select * from filrequest where uname='"+uname+"'  ");
                       while (rs.next()) {
                           
                            String id=rs.getString("id");
                           String caption=rs.getString("caption");
                           String descp =rs.getString("descp");
                           String fnmae =rs.getString("fnmae");
                           String requeststatus=rs.getString("requeststatus");
                           
                           
                           
                            
                           
        %>
        
       
         
        
        <tr>
            
            <td style="color:#B22222"><%=caption%></td>
             <td style="color:#B22222"><%=descp%></td>
             <td style="color:#B22222"><%=fnmae%></td>
             <td style="color:#B22222"><%=requeststatus%></td>
             <td style="color:red"><a href="userviewfile.jsp?<%=rs.getString("fid")%>" style="margin-top:500px">view</a> </td></tr>
           
           
            
            
           
            
           
            
            
                    
                    
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
