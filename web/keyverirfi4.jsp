<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="action.Dbcon"%>
<%@page import="action.AESencrp"%>
<%@page import="action.assymetric"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<Script Language="JavaScript">
   function doThis(){
alert( "I am in the javascript doThis() function" );
}
 </Script>

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
                        <li><a class="active" href="#">Home</a>me</li>
                        <li><a href="filerequest3.jsp">BACK</a></li>
                        
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
                    <center><h1 style="font-size: 40px;color:#2F4F4F;font-family:Algerian;height:60px">ORGINAL DATA</h1></center>
                    <div  style="float:left">
                        <form action="Download" method="post" >
                            <%
        HttpSession sess = request.getSession();
            String s = sess.getAttribute("ufid").toString();
        session.setAttribute("ufid", s);
        Connection con = Dbcon.getCon();
    Statement st = con.createStatement();
    
    
         ResultSet rs = st.executeQuery("select * from fileupload  where id='"+s+"'  ");
                       while (rs.next()) {
                           
                            String id=rs.getString("id");
                           String fname=rs.getString("fname");
                           String desp=rs.getString("fileid");
                           String proxyreenc=rs.getString("enkfiles");
                            AESencrp aes = new AESencrp();
                            String prodecrypt = aes.decrypt(proxyreenc);
                           
                            
                            
                           
                           
                          
                           
                           
                            
                           
        %>
                            <table>
                                
                                <tr><td style="font-size: 30px;color:#DB7093;font-family:Baskerville Old Face;height:60px">caption</td><td><input type="text" class="css-input" value="<%=fname%>"></input></td></tr>
                                <tr><td style="font-size: 30px;color:#DB7093;font-family:Baskerville Old Face;height:60px">DESCP</td><td><input type="text" class="css-input" value="<%=desp%>"></input></td></tr>
                                 <tr><td style="font-size: 30px;color:#DB7093;font-family:Baskerville Old Face;height:60px">ORGINAL DATA</td><td><textarea style="widht:260px;height:200px;"class="css-input" ><%=prodecrypt%> </textarea></td></tr>
                                  <tr><td><input style="font-size: 15px;;width: 250px;height: 30px" type="submit" value="Download" name="fkey"  required=""placeholder="USERNAME" /></td></tr>
                                

                            </table>
                            <%
                            
                        }
                        
                    %>
                        </form>


                        <!--<input type="text"></input>-->
                    </div>
                        <div  style="float:right;margin-right: 90px;margin-top: 60px">
            
                            <img src="images/dec.png" style="width:300px;height:200px"></img>
                
       
     
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
