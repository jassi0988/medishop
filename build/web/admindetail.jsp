<%-- 
    Document   : admindetail
    Created on : 30 Mar, 2018, 7:33:00 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%@include file="headerfiles.jsp" %>
        <style>
            #ex{
                background-image: url("images/doctor.png");
                background-size: 200px 300px;
                background-repeat: no-repeat;
                background-position: center right;
                
            }
            #cen{
                text-align: center;
                color: #FBB448;
                padding-top: 1em;
            }    
            #ali{
                padding-top: 50px;
                padding-bottom: 20px;
            }
            #te{
                text-height: 10px;
            }
            #file{
                margin-top: 10px;
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
        
        <%
            
            String username="",email="",password=""; 
                            try
                            {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                                try
                                {
                                    String a="select * from adminlogin";
                                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                                    
                                    ResultSet myres=mystatement.executeQuery();
                                    if(myres.next())
                                    {
                                        username=myres.getString("username");
                                        email=myres.getString("email");
                                        password=myres.getString("password");
                                        
                                    }
                                    else
                                    {
                                    out.print("Invalid Id");
                                    }

                                }
                                catch(Exception e)
                                {
                                out.print("as"+e.getMessage());
                                }

                            }
                            catch(Exception e)
                            {
                            out.println("Error in Connection " + e.getMessage());
                            }



                            %>
                            
                            
        <div id="ex">
        <div class="container"> 
        
            <h1 id="cen">Add Medicine</h1>
            <form id="ali" method="post"  class="form1">
                
                
                
                <div class="col-md-6">
                    Username<br><input type="text"  name="username" id="bno" value="<% out.print(username); %>"> 
                    <br>Email<br><input type="text"  name="email" id="name" value="<% out.print(email); %>">
                    <br>Password<br><input type="text"  name="password" id="name" value="<% out.print(password); %>">
                    
                    <div id="msg"></div>
                    
                </div>
                
                    
               
               
                <div class="col-md-12">
                <center id="ali"><input type="submit" value="Submit" id="addmedi" class="addmedi" name="submit"></center>
                <center><div id="show"></div></center>
                
                </div>
                    
<%                    
    if(request.getParameter("submit")!=null)
    {
                    try
                                            {

                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                                                try
                                                {
                                                    String a="update adminlogin set username=?,email=?,password=?";
                                                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                                                    
                                                    mystatement.setString(1, request.getParameter("username"));
                                                    mystatement.setString(2, request.getParameter("email"));
                                                    mystatement.setString(3, request.getParameter("password"));
                                                   
                                                    if(mystatement.executeUpdate()>0)
                                                    {
                                                            session.removeAttribute("adminname");
                                                            session.setAttribute("adminname",request.getParameter("username") );
                                                            response.sendRedirect("adminindex.jsp");
                                                    }   

                                                }
                                                catch(Exception e)
                                                {
                                                out.print("Error in Query "+e.getMessage());
                                                }
                                            }
                                            catch(Exception e)
                                            {
                                            out.println("Error in Connection " + e.getMessage());
                                            }
                                           }
                                            


%>

            </form>
        </div>
        </div>
        
       
        <%@include file="script.jsp" %>
        <%@include file="footer.jsp" %>
    </body>
</html>
