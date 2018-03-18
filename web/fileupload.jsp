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
<%
String msg = null;
String msgg = null;

    final String filepath = "D:/";
    String filename = null;
    try {
        MultipartRequest m = new MultipartRequest(request, filepath);
        File file = m.getFile("file");
         filename = file.getName().toLowerCase();
        BufferedReader br = new BufferedReader(new FileReader(filepath + filename));
        StringBuffer sb = new StringBuffer();
        String temp = null;

        while ((temp = br.readLine()) != null) {
            sb.append(temp);
        }
        System.out.println("------------88hhh"+sb.toString());
        msg=sb.toString();
        
         msgg = new AESencrp().encrypt(msg);
%>
<%
    } catch (Exception Ex) {
        Ex.printStackTrace();
    }

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Template-40</title>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
            <link href="css/styles.css" rel="stylesheet" type="text/css" />
            <link rel="stylesheet" href="css/textfeild.css"/>
    </head>
    <body>
        <div class="header-wrapper">
            <div class="header">
                <div class="logo">
                    <h1>Sitename</h1>
                </div>
                <!---logo ends here -->
                <div class="menu">
                    <ul>
                        <li><a class="active" href="index.jsp">Home</a>me</li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Services</a></li>
                        <li><a href="#">Solutions</a></li>
                        <li><a href="#">Contact</a></li>
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
                    <center><h1 style="font-size: 40px;color:#2F4F4F;font-family:Algerian;height:60px">REGISTRATION</h1></center>
                    <div  style="float:left">
                        <form action="fileupload.jsp" method="post" enctype="multipart/form-data">
                            <table>
                                <tr><td style="font-size: 30px;color:#DB7093;font-family:Baskerville Old Face;height:60px">FILE</td><td><input type="file" name="file" class="css-input" value="<%=filename%>"></input></td></tr>
                                <tr><td style="font-size: 30px;color:#DB7093;font-family:Baskerville Old Face;height:60px">FILENAME</td><td><input type="text" class="css-input" value=""></input></td></tr>
                                <tr><td style="font-size: 30px;color:#DB7093;font-family:Baskerville Old Face;height:60px">FILE_ID</td><td><input type="text" class="css-input" value=""></input></td></tr>
                                <tr><td style="font-size: 30px;color:#DB7093;font-family:Baskerville Old Face;height:60px">ENCRYPT</td><td><textarea style="width:300px;height: 150px;"><%=msgg%></textarea></td></tr>
                                <tr><td style="font-size: 30px;color:#DB7093;font-family:Baskerville Old Face;height:60px">MASTER_KEY</td><td><input type="text" class="css-input" value=""></input></td></tr>
                                <tr><td style="font-size: 30px;color:#DB7093;font-family:Baskerville Old Face;height:60px">PRIVATE</td><td><input type="text" class="css-input" value=""></input></td></tr>
                                <tr><td><input style="font-size: 15px;;width: 250px;height: 30px" type="submit" value="upload" name="fkey"  required=""placeholder="USERNAME" /></td></tr>

                            </table>
                        </form>


                        <!--<input type="text"></input>-->
                    </div>
                    <input type="submit" value="Execute Test" onclick="executeTest()" ></input>
                </div>
                <div  style="float:right">

                    <img src="images/book_now dd.gif"></img>



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
