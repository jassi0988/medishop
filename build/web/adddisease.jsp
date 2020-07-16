<%-- 
    Document   : addmedicine
    Created on : 28 Feb, 2018, 10:13:03 AM
    Author     : Dell
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="headerfiles.jsp" %>
        <style>
            #cen{
                text-align: center;
                color: #FBB448;
                padding-top: 1em;
            }    
            .ali{
                padding-top: 50px;
                padding-bottom: 30px;
            }
            #te{
                text-height: 10px;
            }
            #col{
                color: #84C639;
            }
            #file{
                padding-top: 13px;
            }
                
    
        </style>
        
        <script src="jquery-3.2.1.min.js"></script>
          <script>
              
               $(document).ready(function(){
               $("#form1").submit(function(e){
               e.preventDefault();
               if($("#name").val().length==0 || $("#area").val().length==0)
                    {
                        $("#msg1").html("<center><h3><div class='alert alert-danger'><strong>Warning!</strong>Please Enter Fields</div></h3></center>")
                    }
                    else
                    {
                        var formData = new FormData($(this)[0]);
                        $.ajax({
                        url:"ajax/adddisease.jsp",
                        processData:false,
                        contentType:false,
                        cache:false,
                        data:formData,
                        type:"post",
                        beforeSend:function()
                        {
                             $("#msg1").html("<center><img src='images/load.gif'></center>")
                        },
                        success:function(result)
                        {
                            $("#msg1").html(result)
                        },
                        error:function(e)
                        {
                            $("#msg1").html("error  " +e)
                        }

                       }) ;
                    }
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
        <div class="container"> 
        
            <h1 id="cen">Add Disease Or Drug Category</h1>
            <div class="col-md-12">
                <form class="ali"  id="form1" enctype="multipart/form-data" >         
                    <center><input type="text" placeholder="Enter Disease Name" name="name" id="name">     </center> 
                    <center><textarea  name="about" placeholder="Enter About Us Of Disease" rows="5" id="area"></textarea>     </center>
                    <center id="file" ><input type="file" name="file" ></center>
                    <center class="ali"><input type="submit" value="Save Disease" name="submit" id="this"></center>
                    <div id="msg1"></div>
                </form>
            </div>
        </div>
       
        
        <%@include file="script.jsp" %>
        <%@include file="footer.jsp" %>
									
    </body>
</html>
