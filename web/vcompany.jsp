<%-- 
    Document   : vcompany
    Created on : 15 Mar, 2018, 11:04:51 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="headerfiles.jsp"%> 
        <style>
        #cen{
                text-align: center;
                color: #FBB448;
                padding-top: 1em;
        }  
            #customers {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #customers td, #customers th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customers tr:nth-child(even){background-color: #f2f2f2;}

        #customers tr:hover {background-color: #ddd;}

        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #4CAF50;
            color: white;
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
        
        <div class="container-fluid">
        <h1 id="cen">Company</h1><br><br>
        
        <%
                            try
                            {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                                try
                                {
                                    String a="select * from addcompany";
                                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                                    ResultSet myres=mystatement.executeQuery();
                                    if(myres.next())
                                    {
                                        out.print("<table  id='customers'>"
                                        + "<tr>"        
                                        + "<th>License No</th>"
                                        + "<th>Company Name</th>"
                                        + "<th>Owner Name</th>"
                                        + "<th>Manager Name</th>"
                                        + "<th>Email</th>"
                                        + "<th>Phone</th>"
                                        + "<th>Address</th>" 
                                        + "<th>Place</th>" 
                                        + "<th>Type</th>" 
                                        + "<th>Update</th>" 
                                        + "<th>Delete</th>"         
                                        + "</tr>");
                                        do
                                        {
                                            out.print("<tr>"
                                            + "<td>"+myres.getString("lisenceno")+"</td>"
                                            + "<td>"+myres.getString("cname")+"</td>"
                                            + "<td>"+myres.getString("oname")+"</td>"
                                            + "<td>"+myres.getString("mname")+"</td>"
                                            + "<td>"+myres.getString("email")+"</td>"   
                                            + "<td>"+myres.getString("phone")+"</td>"
                                            + "<td>"+myres.getString("address")+"</td>"
                                            + "<td>"+myres.getString("place")+"</td>"
                                            + "<td>"+myres.getString("type")+"</td>"          
                                            + "<td><a href='update.jsp?lisenceno="+myres.getString("lisenceno")+"'>Update</a></td>"   
                                            + "<td><a href='delete.jsp?lisenceno="+myres.getString("lisenceno")+"'>Delete</a></td>"            
                                            + "</tr>");
                                        }
                                        while(myres.next());
                                        out.print("</table>");
                                    }
                                    else
                                    {
                                    out.print("");
                                    }

                                }
                                catch(Exception e)
                                {
                                out.print(e.getMessage());
                                }

                            }
                            catch(Exception e)
                            {
                            out.println("Error in Connection " + e.getMessage());
                            }
        %>
            
        </div>
        <%@include file="footer.jsp"%>
    </body>
</html>
