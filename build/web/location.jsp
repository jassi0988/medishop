<%-- 
    Document   : location.jsp
    Created on : 3 Apr, 2018, 12:25:36 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="headerfiles.jsp" %>
    </head>
    <body>  
         <%
            if(session.getAttribute("username")!=null)             
            {
          %>      
                <%@include file="userheader.jsp" %>
         <%       
            }
            else
            {
           %>
             <%@include file="header.jsp" %>
          <%   
            }
         %>
        <div class="map">
		
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d109066.42047314157!2d75.50337905161291!3d31.322378738751176!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x391a5a5747a9eb91%3A0xc74b34c05aa5b4b8!2sJalandhar%2C+Punjab!5e0!3m2!1sen!2sin!4v1522738405327" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
	</div>

 <%@include file="script.jsp" %>
        <%@include file="footer.jsp" %>    </body>
</html>
