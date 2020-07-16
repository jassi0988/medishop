<%-- 
    Document   : payment
    Created on : 29 Mar, 2018, 3:41:34 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/f4/font-awesome.css" rel="stylesheet" type="text/css" media="all" /> 
        <title>JSP Page</title>
        <%@include file="headerfiles.jsp" %>
        <style>
            .upload-btn-wrapper {
                position: relative;
                overflow: hidden;
                display: inline-block;
              }

              .btn {
                border: 2px solid gray;
                color: gray;
                background-color: white;
                padding: 8px 20px;
                border-radius: 8px;
                font-size: 20px;
                font-weight: bold;
              }

              .upload-btn-wrapper input[type=file] {
                font-size: 100px;
                position: absolute;
                left: 0;
                top: 0;
                opacity: 0;
              }

        </style>  
        <script src="jquery-3.2.1.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
            $(".form1").submit(function(e){
                e.preventDefault(); 
                var a=$(".btn").attr("value");
                var formdata = new FormData($(this)[0],a);
                $.ajax({
                    url:'ajax/demo.jsp',
                    processData:false,
                    contentType:false,
                    cache:false,
                    data:formdata,
                    
                    type:'post',
                    success:function(result) 
                    {                       
                        $(".msg").html(result)
                    },
                    error: function() 
                    {
                        $(".msg").html("error in ajax")
                    }
                });  
            }); 
            });
        </script>
    </head>
    <body>
        <%
            if(session.getAttribute("username")!=null)             
            {
          %>      
                <%@include file="userheader.jsp" %>
         <%       
            }
            else
            {
           %>
             <%@include file="header.jsp" %>
          <%   
            }
         %>
       
      <br><br>
      <form method="post" enctype="multipart/form-data" class="form1">
            <center><div class="upload-btn-wrapper">
                    <button class="btn">Upload Prescription</button>
            <input type="file" name="myfile" class="myfile">
            
            </div></center>
          <input type="hidden" name="yo" value="156">
          <center><input type="submit" name="submit"></center>
      </form>
        <%@include file="script.jsp" %>
        <%@include file="footer.jsp" %>
    </body>
</html>
