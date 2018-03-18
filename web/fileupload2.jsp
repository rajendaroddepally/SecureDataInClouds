
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="action.assymetric"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>


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
         <li><a href="fileupload2.jsp">FILEUPLOAD</a></li>
         <li><a href="owneruser.jsp">USER</a></li>
         <li><a href="ownerfiledet.jsp">FILE</a></li>
       
                    </ul>
                </div>
                <!--- menu ends here -->
            </div>
            <!---headerends here -->
        </div>
        <!---header-wrapper-ends here -->
        <div class="clear">

        </div>
        <div class="banner-wrapper">
            <div class="banner">
                <div class="banner-image"> 
                    <center><h1 style="font-size: 40px;color:#2F4F4F;font-family:Algerian;height:60px">FILE UPLOAD</h1></center>
                    <div  style="float:left">
                        <%
                        assymetric keyy  = new assymetric();
                        String masterky  = keyy.getSecretKey();
                        
                        Random RANDOM = new SecureRandom();
                    int PASSWORD_LENGTH = 25;
                   String letters = "abcdefghjkmnpqrstuvwxyzABCDEFGHJKMNPQRSTUVWXYZ123456789+@$%!*%#+-?/";
                    String pw = "";
                 for (int i=0; i<PASSWORD_LENGTH; i++)
      {
          int index = (int)(RANDOM.nextDouble()*letters.length());
          pw += letters.substring(index, index+1);
      }
                 
           String publickey =pw;      
      System.out.println("uour randome string"+pw);
                        %>
                        
                        <form action="uploadfile" method="post" enctype="multipart/form-data">
                            <table>
                                <tr><td style="font-size: 30px;color:#DB7093;font-family:Baskerville Old Face;height:60px">FILE</td><td><input type="file" class="css-input" value="" name="file"></input></td></tr>
                                <tr><td style="font-size: 30px;color:#DB7093;font-family:Baskerville Old Face;height:60px">FILE_CAPTION</td><td><input type="text" class="css-input" value="" name="fname"></input></td></tr>
                                <tr><td style="font-size: 30px;color:#DB7093;font-family:Baskerville Old Face;height:60px">DESCRIPTION</td><td><input type="text" class="css-input" value="" name="fedid"></input></td></tr>
                                <tr><td style="font-size: 30px;color:#DB7093;font-family:Baskerville Old Face;height:60px">MASTER_KEY</td><td><input type="text" class="css-input" value="<%=masterky%>" name="mastkey"></input></td></tr>
                                <tr><td style="font-size: 30px;color:#DB7093;font-family:Baskerville Old Face;height:60px">PRIVATE_KEY</td><td><input type="text" class="css-input" value="<%=publickey%>" name="privark"></input></td></tr>
                                <tr><td><input style="font-size: 15px;;width: 250px;height: 30px" type="submit" value="Encrypt&upload" name="fkey"  required=""placeholder="USERNAME" /></td></tr>

                            </table>
                        </form>


                        <!--<input type="text"></input>-->
                    </div>
                    <div style="float:right;margin-right: 90px;margin-top: 60px">

                    <img src="images/upload.jpg"></img>



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
