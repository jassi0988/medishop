<%-- 
    Document   : coustmerprofile
    Created on : 27 Mar, 2018, 8:41:10 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="headerfiles.jsp" %>
        <style>
            #ex{
                background-image: url("images/edituser.png");
                background-size: 230px 236px;
                background-repeat: no-repeat;
                background-position: center right;   
                margin-right: 200px;
            }
            .btn-primary{
                border-radius: 36px;
                padding: .7em 2em;
                margin-top: 28px;
                margin-left: 25px;
                font-weight: bold;
                font-size: 18px;
            }
        </style> 
        
    </head>
    <body>
        <%@include file="userheader.jsp" %>
        <%
            
            String username="",password="",email="",phone="";
                            try
                            {
                                String var=request.getParameter("n");
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                                try
                                {
                                    String a="select * from coustmerlogin where username=?";
                                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                                    mystatement.setString(1, session.getAttribute("username").toString());
                                    ResultSet myres=mystatement.executeQuery();
                                    if(myres.next())
                                    {                                        
                                        do
                                        { 
                                            username=myres.getString("username");
                                            password=myres.getString("password");
                                            email=myres.getString("email");
                                            phone=myres.getString("phone");
                                        }while(myres.next());
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
            <form class="form-horizontal" method="post">
        <fieldset>
        <% String name1; name1=session.getAttribute("username").toString(); %>
        <!-- Form Name -->
        <center><legend style="font-size: 32px;font-weight: 600;font-family: initial;margin-bottom: 2em; "><% out.print("Username: "+name1); %></legend></center>

        <!-- Text input-->
        
        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="textinput">Username</label>  
          <div class="col-md-4">
          <input id="textinput" name="username" type="text" placeholder="Email" class="form-control input-md" value="<%=username%>">

          </div>
        </div>
        <div class="form-group">
          <label class="col-md-4 control-label" for="textinput">Email</label>  
          <div class="col-md-4">
          <input id="textinput" name="email" type="text" placeholder="Email" class="form-control input-md" value="<%=email%>">

          </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="textinput">Password</label>  
          <div class="col-md-4">
          <input id="textinput" name="password" type="password" placeholder="Password" class="form-control input-md" value="<%=password%>">

          </div>
        </div>
        <div class="form-group">
          <label class="col-md-4 control-label" for="textinput">Phone Number</label>  
          <div class="col-md-4">
          <input id="textinput" name="phone" type="text" placeholder="Phone Number" class="form-control input-md"  value="<%=phone%>">

          </div>
        </div>


        <!-- Button -->
        <div class="form-group">
          <label class="col-md-4 control-label" for="singlebutton"></label>
          <div class="col-md-4">
            <button id="singlebutton" name="update" class="btn btn-primary">Update</button>
            <%--<button id="singlebutton" name="update" class="btn btn-primary">Remove Account</button>--%>
          </div>
        </div>

        </fieldset>
<%
if(request.getParameter("update")!=null)
    {
                    try
                                            {

                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                                                try
                                                {
                                                    String a="update coustmerlogin set username=?,email=?,password=?,phone=? where username=?";
                                                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                                                    
                                                    mystatement.setString(1, request.getParameter("username"));
                                                    mystatement.setString(2, request.getParameter("email"));
                                                    mystatement.setString(3, request.getParameter("password"));
                                                    mystatement.setString(4, request.getParameter("phone"));

                                                    mystatement.setString(5, session.getAttribute("username").toString());
      
                                                    if(mystatement.executeUpdate()>0)
                                                    {
                                                        session.removeAttribute("username");
                                                        session.setAttribute("username",request.getParameter("username") );
                                                        response.sendRedirect("coustmerprofile.jsp");
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
        <%@include file="footer.jsp" %>
    </body>
</html>
