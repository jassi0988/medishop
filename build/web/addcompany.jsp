<%-- 
    Document   : addcompany
    Created on : 3 Mar, 2018, 12:53:53 PM
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
            .ali{
                padding-top: 50px;
                
            }
            #te{
                text-height: 10px;
            }
            .add{
                height: 112px;
                margin-bottom: 3px;
            }
        </style>
        <script src="jquery-3.2.1.min.js"></script>
        <script>
            $(document).ready(function(){

                $("#submit").click(function(e){
                e.preventDefault();
                var a=$("#lno").val();
                var b=$("#cname").val();
                var c=$("#oname").val();
                var d=$("#mname").val();
                var e=$("#email").val();
                var f=$("#cno").val();
                var g=$("#address").val();
                var h=$("#ptype").val();
                var i=$("#ctype").val();
                $.ajax({
                url:"ajax/addcompany.jsp",
                data:{"lno":a,"cname":b,"oname":c,"mname":d,"email":e,"cno":f,"address":g,"ptype":h,"ctype":i},
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
        
            <h1 id="cen">Add Company</h1>
            <form class="ali" id="form1" method="post">
                <div class="col-md-6">
                    
                    <input type="text" placeholder="Lisence Number" name="lno" id="lno">
                    <input type="text" placeholder="Company Name" name="cname" id="cname">
                    <input type="text" placeholder="Owner Name" name="oname" id="oname">
                    <input type="text" placeholder="Manager Name" name="mname" id="mname">                  
                    <input type="text" placeholder="Email Id" name="email" id="email">
                    
                   
                </div>
                <div class="col-md-6">
                    
                    <input type="text" placeholder="Contact Number" name="cno" id="cno">
                    <textarea  name="address" placeholder="Detail Address" rows="4" class='add' id="address"></textarea>
                    <select id="ptype" name="ptype">
                        <option value="">Choose Place</option>
                        <option value="Jalandhar">Jalandhar</option>                            
                        <option value="Hoshiarpur">Hoshiarpur</option>
                        <option value="Pathankot">Pathankot</option>
                        <option value="Ludhiana">Ludhiana</option>
                        <option value="Adampur">Adampur</option>
                        <option value="Patiala">Patiala</option>
                    </select>
                  
                   <select id="ctype" name="ctype">
                        <option value="">Company Type</option>
                        <option value="Limited">Limited</option>
                        <option value="Private">Private</option>
                        <option value="Pvt. ltd.">Pvt. ltd.</option>
                    </select>
                    
                </div>
                    
               
               
                <div class="col-md-12">
                <center class="ali"><input type="submit" value="Submit" name="submit" id="submit"></center> 
                <center><div class="ali" id="msg1"></div></center>
                </div>
                
            </form>
        </div>
        </div>
        
        
        <%@include file="script.jsp" %>
        <%@include file="footer.jsp" %>
    </body>
</html>
