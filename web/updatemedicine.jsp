<%-- 
    Document   : updatemedicine
    Created on : 23 Mar, 2018, 8:22:17 PM
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
            
            String bno="",name="",diseasetype="",company="",price="",type="",expdate="",mfgdate="",image=""; 
                            try
                            {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                                try
                                {
                                    String a="select * from addmedicineprecription where bno=?";
                                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                                    mystatement.setString(1, request.getParameter("bno"));
                                    ResultSet myres=mystatement.executeQuery();
                                    if(myres.next())
                                    {
                                        bno=myres.getString("bno");
                                        name=myres.getString("name");
                                        diseasetype=myres.getString("drugtype");
                                        company=myres.getString("company");
                                        price=myres.getString("price");
                                        type=myres.getString("type");
                                        expdate=myres.getString("expdate");
                                        mfgdate=myres.getString("mfddate");
                                        image=myres.getString("image");
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
                    <input type="text" placeholder="Batch Number" name="bno" id="bno" value="<% out.print(bno); %>"> 
                    <input type="text" placeholder="Medicine Name" name="name" id="name" value="<% out.print(name); %>"> 
                    
                    <div id="msg"></div>
                    <select id="com" name="com">
                        <option value="">Choose Company</option>
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
                                        do
                                        {
                                            if(myres.getString("cname").equals(company))
                                            {
                                                out.print("<option value="+myres.getString("cname")+" selected='selected'>"+myres.getString("cname")+"</option>");
                                            }
                                            else
                                            {
                                                out.print("<option value="+myres.getString("cname")+">"+myres.getString("cname")+"</option>");
                                            }
                                        }while(myres.next());
                                    }
                                    else
                                    {
                                    out.print("<option>No Company Added</option>");
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
                     <option value="Others">Others</option>   
                     </select>
                    <select id="ptype" name="ptype">
                        <option value="">Choose Disease Or Drug Category</option>
                        
                        
                        <%
                            try
                            {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                                try
                                {
                                    String a="select * from diseasecat";
                                    PreparedStatement mystatement=myconnection.prepareStatement(a);

                                    ResultSet myres=mystatement.executeQuery();
                                    
                                    if(myres.next())
                                    {
                                        do
                                        {
                                            if(myres.getString("name").equals(diseasetype))
                                            {
                                                out.print("<option value="+myres.getString("name")+" selected='selected'>"+myres.getString("name")+"</option>");
                                            }
                                            else
                                            {
                                                out.print("<option value="+myres.getString("name")+">"+myres.getString("name")+"</option>");
                                            }
                                        }while(myres.next());
                                    }
                                    else
                                    {
                                    out.print("<option>No Diseases Added</option>");
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
                            
                     </select>
                    
                </div>
                <div class="col-md-6">
                    <select id="type" name="type">
                        <option value="">Choose Type</option>
                        <option value="Liquid" <% String typ="Liquid"; if(typ.equals(type)){ %> selected="selected" <%}%> >Liquid</option>
                        <option value="Tablet" <% String typ1="Tablet"; if(typ1.equals(type)){ %> selected="selected" <%}%> >Tablet</option>
                        <option value="Injection" <% String typ2="Injection"; if(typ2.equals(type)){ %> selected="selected" <%}%> >Injection</option>
                     </select>
                     
                    <input type="text" placeholder="Price" name="price" id="price" value="<% out.print(price); %>">
                    <input type="text" placeholder="MM/YY - Exp Date" name="expdate" id="expdate" value="<% out.print(expdate); %>">
                    <input type="text" placeholder="MM/YY - Mfd Date" name="mfddate" id="mfddate" value="<% out.print(mfgdate); %>">
                    <%--
                    <section class="creditly-wrapper ">
                        <input  class="expiration-month-and-year form-control" type="text" name="expdate" placeholder="MM / YY  - EXP Date" id="expdate">										
                    </section>
                    --%>
                     
                    
                     
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
                                                    String a="update addmedicineprecription set bno=?,name=?,drugtype=?,company=?,type=?,price=?,expdate=?,mfddate=? where bno=?";
                                                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                                                    
                                                    mystatement.setString(1, request.getParameter("bno"));
                                                    mystatement.setString(2, request.getParameter("name"));
                                                    mystatement.setString(3, request.getParameter("ptype"));
                                                    mystatement.setString(4, request.getParameter("com"));
                                                    mystatement.setString(5, request.getParameter("type"));
                                                    mystatement.setString(6, request.getParameter("price"));
                                                    mystatement.setString(7, request.getParameter("expdate"));
                                                    mystatement.setString(8, request.getParameter("mfddate"));
                                                    mystatement.setString(9, request.getParameter("bno"));
                                                    
                                                    if(mystatement.executeUpdate()>0)
                                                    {
                                                            
                                                            response.sendRedirect("medilist.jsp");
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
