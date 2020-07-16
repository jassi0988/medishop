<%-- 
    Document   : addmedicine
    Created on : 28 Feb, 2018, 10:13:03 AM
    Author     : Dell
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
        
        <script src="jquery-3.2.1.min.js"></script>
            <script>
                $(document).ready(function(){

                $("#mtype").change(function(e){
                e.preventDefault();
                var a=$("#mtype").val();
                
                $.ajax({
                url:"ajax/categorys.jsp",
                data:{"mtype":a},
                type:"post",
                success:function(data)
                {    
                  $("#msg").html(data)
    
                },
                error:function()
                {
                    $("#msg").html("error in ajax")
                }
                });
                });

                });

            </script>
            <script>
                $(document).ready(function(){

                $("#mtype").change(function(e){
                e.preventDefault();
                var a=$("#mtype").val();
                
                $.ajax({
                url:"ajax/categorys1.jsp",
                data:{"mtype":a},
                type:"post",
                success:function(data)
                {    
                  $("#msg1").html(data)
    
                },
                error:function()
                {
                    $("#msg").html("error in ajax")
                }
                });
                });

                });

            </script>
            <script src="jquery-3.2.1.min.js"></script>
            <script>
               $(document).ready(function(){
               $(".form1").submit(function(e){
               e.preventDefault();
               var formData = new FormData($(this)[0]);
               var a=$("#mtype").val();
            
               if(a=='presciption')
               {
                    if($("#price").val().length==0 || $("#name").val().length==0 || $("#bno").val().length==0)
                    {
                        $("#show").html("<center><h3><div class='alert alert-danger'><strong>Warning!</strong>Please Enter Fields</div></h3></center>")
                    }
                    else
                    {
                    $.ajax({
                    url:"ajax/addmedicinepre.jsp",
                    processData:false,
                    contentType:false,
                    cache:false,
                    data:formData,
                    type:"post",
                    beforeSend:function()
                    {
                        
                        $("#show").html("<center><img src='images/load.gif'></center>")
                        
                    },
                    success:function(result)
                    {
                        $("#show").html(result)
                        
                    },
                    error:function(e)
                    {
                        $("#show").html("error  " +e)
                    }

                    }) ;
                }
               }
               
               else if(a=='non-presciption')
                {
                    if($("#price").val().length==0 || $("#name").val().length==0 || $("#bno").val().length==0)
                    {
                        $("#show").html("<center><h3><div class='alert alert-danger'><strong>Warning!</strong>Please Enter Fields</div></h3></center>")
                    }
                    else
                    {
                        $.ajax({
                       url:"ajax/addmedicinenonpre.jsp",
                       processData:false,
                       contentType:false,
                       cache:false,
                       data:formData,
                       type:"post",
                       beforeSend:function()
                       {
                            $("#show").html("<center><img src='images/load.gif' height='50px' width='50px'></center>")
                       },
                       success:function(result)
                       {
                           $("#show").html(result)
                       },
                       error:function(e)
                       {
                           $("#show").html("error  " +e)
                       }

                       }) ;
                    }
                }
                else
                {
                    alert("Please Select Medicine Category");
                }
               });

            });

        </script>    
    </head>
    <body >
        
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
        
            <h1 id="cen">Add Medicine</h1>
            <form id="ali" method="post" enctype="multipart/form-data" class="form1">
                
                
                
                <div class="col-md-6">
                    <input type="text" placeholder="Batch Number" name="bno" id="bno"> 
                    <input type="text" placeholder="Medicine Name" name="name" id="name"> 
                    <select id="mtype" name="mp">
                        <option value="">Add Medicine To</option>
                        <option value="presciption">Presciption</option>
                        <option value="non-presciption">Non-Presciption</option>
                        
                     </select>
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
                     <option value="Others">Others</option>   
                     </select>
                    
                    
                </div>
                <div class="col-md-6">
                     <div id="msg1"></div>
                    <input type="text" placeholder="Price" name="price" id="price">
                    <input type="text" placeholder="MM/YY - Exp Date" name="expdate" id="expdate">
                    <input type="text" placeholder="MM/YY - Mfd Date" name="mfddate" id="mfddate">
                    <%--
                    <section class="creditly-wrapper ">
                        <input  class="expiration-month-and-year form-control" type="text" name="expdate" placeholder="MM / YY  - EXP Date" id="expdate">										
                    </section>
                    --%>
                     
                    
                     <input type="file"  name="file" id="file">
                  </div>
                    
               
               
                <div class="col-md-12">
                <center id="ali"><input type="submit" value="Submit" id="addmedi" class="addmedi"></center>
                <center><div id="show"></div></center>
                
                </div>
            </form>
        </div>
        </div>
        
        <script src="jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="js/creditly.js"></script>
        <link rel="stylesheet" href="css/creditly.css" type="text/css" media="all" />

		<script type="text/javascript">
			$(function() {
			 Creditly.initialize(
				  '.creditly-wrapper .expiration-month-and-year'
				 );

			});
		</script>
                
        <%@include file="script.jsp" %>
        <%@include file="footer.jsp" %>
									
    </body>
</html>
