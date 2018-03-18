<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SecRBAC:_Secure_data in the cloud</title>
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/textfeild.css"/>
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
       <center><h1 style="font-size: 40px;color:#2F4F4F;font-family:Algerian;height:60px">USER </h1></center>
        <div  style="float:left;margin-top: 5px;margin-left: 70px;">
             <%
            HttpSession ses = request.getSession();
            String name = ses.getAttribute("username").toString();
            System.out.println("User: " + name);
             String names=name.toUpperCase();
            
            
        %>
            
        <img src="images/welll.gif" style="width: 300px;height: 150px"></img>
        <h1 style="font-size: 60px;margin-left: 250px;margin-top: 30px;color:palevioletred"><%=names%></h1>
        
     
        </div>
<!--        <div  style="float:right;margin-right: 100px;margin-top: 60px">
            
            <img src="images/OWNER.jpg"></img>
                
       
     
        </div>-->
       
    
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
