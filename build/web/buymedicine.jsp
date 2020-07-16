<%-- 
    Document   : buymedicine
    Created on : 15 Mar, 2018, 10:11:56 AM
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
                background-image: url("");
                background-size: 200px 300px;
                background-repeat: no-repeat;
                background-position: center right;
                
            }
            #cen{
                text-align: center;
                color: #FBB448;
                padding-top: 1em;
            }    
            
            
        </style>
        
        <script src="jquery-3.2.1.min.js"></script>
        <script>
            $(document).ready(function(){

                $("#submit").click(function(e){
                e.preventDefault();
                var a=$("#bno").val();
                var b=$("#name").val();
                var c=$("#qty").val();
                var d=$("#price").val();
                var e=$("#com").val();
                var f=$("#stype").val();
                var g=$("#sname").val();
                var h=$("#address").val();
                var i=$("#email").val();
                $.ajax({
                url:"ajax/buymedi.jsp",
                data:{"bno":a,"name":b,"qty":c,"price":d,"com":e,"stype":f,"sname":g,"address":h,"email":i},
                type:"post",
                beforeSend:function()
                   {
                        $("#msg1").html("<center><img src='images/load.gif'></center>")
                   },
                success:function(result)
                {    
                    $("#msg1").html(result)
                },
                error:function()
                {
                    $("#msg1").html("error in ajax")
                }

                });

                });

                });

        </script>    
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
        <div id="ex">
        <div class="container"> 
        
            <h1 id="cen">Buy Medicine</h1>
            <form method="post" enctype="multipart/form-data" class="form1">
                <div class="col-md-6">
                    <h3 id="cen">Medicine Details</h3>
                    <input type="text" placeholder="Batch Number" name="bno" id="bno"> 
                    <input type="text" placeholder="Medicine/Product Name" name="name" id="name"> 
                    <input type="text" placeholder="Quantity" name="qty" id="qty"> 
                    <input type="text" placeholder="Price" name="price" id="price"> 
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
                                         out.print("<option value="+myres.getString("cname")+">"+myres.getString("cname")+"</option>");
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
                        
                     </select>
                </div>
                <div class="col-md-6">
                    <h3 id="cen">Shop Details</h3>                   
                    <input type="text" placeholder="Shop Name (Wholesaler/Retailer)" name="sname" id="sname">
                    <select id="stype" name="stype">
                        <option value="">Shop Type</option>
                        <option value="Limited">Retailer</option>
                        <option value="Private">Wholesaler</option>
                    </select>
                    <textarea  name="address" placeholder="Address" rows="4" id="address"></textarea>
                    <input type="text" placeholder="Email" name="email" id="email">  
                </div>
                      <center><input type="submit" value="Save Disease" name="submit" id="submit"></center>
                      <div id="msg1"></div>
            </form>
        </div>
        </div>
                           <%@include file="footer.jsp" %>
    </body>
</html>
