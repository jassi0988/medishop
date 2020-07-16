<%-- 
    Document   : vcompany
    Created on : 3 Mar, 2018, 4:59:42 PM
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
            if(session.getAttribute("type").toString().equals("admin"))             
            {
        %>      
                <%@include file="adminheader.jsp" %>
        <%       
            }
        %>
      <br><br>
        <div class="container">
            <center><h1>Medicines</h1></center>
            <div class="col-md-6">
                <br>
                <center><h3>Prescription</h3></center>
            <table class="table table-hover">
            <thead>
            <tr>
             <th>Name</th>
            </tr>
            </thead>
            <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      
    </tbody>  

        </table>
        </div>
            <div class="col-md-6">
                <br>
                <center><h3>Non-Prescription</h3></center>
            <table class="table table-hover">
            <thead>
            <tr>
             <th>Name</th>
            </tr>
            </thead>
            <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      
    </tbody>  

        </table>
        </div>
        </div>
        <%@include file="footer.jsp" %>
        <%@include file="script.jsp" %>
    </body>
</html>
