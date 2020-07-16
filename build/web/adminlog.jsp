<%-- 
    Document   : adminlog
    Created on : 18 Feb, 2018, 12:24:21 PM
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
        <title>JSP Page</title>
        <%@include file="headerfiles.jsp" %>
        <script src="jquery-3.2.1.min.js"></script>
            <script>
                $(document).ready(function(){

                $("#s1").click(function(e){
                e.preventDefault();
                var a=$("#uname").val();
                var b=$("#pass").val();
                $.ajax({
                url:"ajax/adminlogin.jsp",
                data:{"uname":a,"pass":b},
                type:"post",
                
                success:function(result)
                {    
                    if(result==2)
                    {
                      $("#msg").html("<center>Please Enter Fields</center>")
                    }
                    if(result==1)
                    {
                      window.location.href= "adminindex.jsp";
                    }
                    if(result==0)
                    {
                        $("#msg").html("<center>Username And Password Is Invalid</center>")
                    }
                },
                error:function()
                {
                    $("#msg").html("error in ajax")
                }

                });

                });

                });

            </script>
            <style>
                
               .w3_login_module {
                min-height: 0;
            } 
            </style>    
    </head>
    <body>
        <%@include file="header.jsp" %>
       
<!-- //products-breadcrumb -->
<!-- banner -->
	
<!-- login -->
		<div class="w3_login">
			<h3>Admin Login</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle">
					
				  </div>
				  <div class="form">
					<h2>Login to Admin Account</h2>
					<form action="#" method="post">
					  <input type="text" name="Username" placeholder="Username" id="uname">
					  <input type="password" name="Password" placeholder="Password" id="pass">
					  <input type="submit" value="Login" name="submit" id="s1">
                                          <br><br>
                                          <div id="msg"></div>
					</form>
				  </div>
				 
                                       
				 
				  
				</div>
			</div>
			
		</div>


        <%@include file="footer.jsp" %>
        <%@include file="script.jsp" %>
    </body>
</html>
