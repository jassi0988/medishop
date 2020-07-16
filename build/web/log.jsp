<%-- 
    Document   : log
    Created on : 18 Feb, 2018, 11:51:34 AM
    Author     : Dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="clogincss/demo.css" />
        <link rel="stylesheet" type="text/css" href="clogincss/style.css" />
	<link rel="stylesheet" type="text/css" href="clogincss/animate-custom.css" />
        <title>Login</title>
        <%@include file="headerfiles.jsp" %>
    </head>
    <body>
        <%@include file="header.jsp" %>

        
        <div class="container">
            <!-- Codrops top bar -->
            <div class="codrops-top">
                
                <div class="clr"></div>
            </div><!--/ Codrops top bar -->
            <br><br>
            <header>
                <h1>Login and Registration To <span>MediStore</span></h1>
				
            </header>
            <br><br>
            <section>				
                <div id="container_demo" >
                    
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form autocomplete="on"> 
                                <h1>Log in</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Your email or username </label>
                                    <input id="username" name="Username" required="required" type="text" placeholder="myusername or mymail@mail.com"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Your password </label>
                                    <input id="password" name="Password" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                                </p>
                                
                                <p class="login button"> 
                                    <input type="submit" value="Login" name="login"/> 
								</p>
                                <p class="change_link">
									Not a member yet ?
									<a href="#toregister" class="to_register">Join us</a>
								</p>
                                <%
                                            if(request.getParameter("login")!=null)
                                            {

                                            try
                                            {

                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                                                try
                                                {
                                                    String a="select * from coustmerlogin where username=? and password=?";
                                                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                                                    mystatement.setString(1, request.getParameter("Username"));
                                                    mystatement.setString(2, request.getParameter("Password"));
                                                    ResultSet myres=mystatement.executeQuery();
                                                    if(myres.next())
                                                    {
                                                        response.sendRedirect("index.jsp");
                                                        session.setAttribute("username", request.getParameter("Username"));  
                                                    }
                                                    else
                                                    {
                                                     out.print("<center>Username And Password Is Incorrect</center>");
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

                        <div id="register" class="animate form">
                            <form autocomplete="on"> 
                                <h1> Sign up </h1> 
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">Your username</label>
                                    <input id="usernamesignup" name="Username" required="required" type="text" placeholder="mysuperusername690" />
                                </p>
                                
                                <p> 
                                    <label for="emailsignup" class="youmail" data-icon="e" > Your email</label>
                                    <input id="emailsignup" name="Email" required="required" type="email" placeholder="mysupermail@mail.com"/> 
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">Your password </label>
                                    <input id="passwordsignup" name="Password" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="p">Phone</label>
                                    <input id="usernamesignup" name="Phone" required="required" type="text" placeholder="98550-*****" />
                                </p>
                                <p class="signin button"> 
									<input type="submit" value="Sign up" name="register"/> 
								</p>
                                <p class="change_link">  
									Already a member ?
									<a href="#tologin" class="to_register"> Go and log in </a>
								</p>
                                                                <%
                                            if(request.getParameter("register")!=null)
                                            {
                                            try
                                            {

                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                                                try
                                                {
                                                    String a="insert into coustmerlogin(username,password,email,phone) values(?,?,?,?)";
                                                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                                                    mystatement.setString(1, request.getParameter("Username"));
                                                    mystatement.setString(2, request.getParameter("Password"));
                                                    mystatement.setString(3, request.getParameter("Email"));
                                                    mystatement.setString(4, request.getParameter("Phone"));
                                                    if(mystatement.executeUpdate()>0)
                                                    {
                                                        response.sendRedirect("index.jsp");
                                                        session.setAttribute("username", request.getParameter("Username"));
                                                    }   
                                                    
                                                }
                                                catch(Exception e)
                                                {
                                                    out.print(e.getMessage());
                                                }
                                            }
                                            catch(Exception e)
                                            {
                                                out.print(e.getMessage());
                                            }
                                            }
                                        %>   
                            </form>
                        </div>
						
                    </div>
                </div>  
            </section>
        </div>
                             <br><br> <br><br> <br><br>
<!-- //newsletter -->
        <%@include file="footer.jsp" %>
        <%@include file="script.jsp" %>
    </body>
</html>
