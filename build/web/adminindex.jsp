<%-- 
    Document   : adminindex
    Created on : 18 Feb, 2018, 1:17:20 PM
    Author     : Dell
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home</title>
        <%@include file="headerfiles.jsp" %>
        <style>
            #note{
                color: #002a80;
            }
        </style>
        
        
    </head>
    <body>
        <%
            if(session.getAttribute("type").toString().equals("admin"))             
            {
        %>      
                <%@include file="adminheader.jsp" %>
        <%       
            }
        %>
        <br><br><br>
        <div class="container">
            <div class="well">
                <center><h1 id='note'>Welcome To Admin Page</h1></center>
            </div>
        </div>
         <%@include file="script.jsp" %>
        <%@include file="footer.jsp" %>
    </body>
</html>
