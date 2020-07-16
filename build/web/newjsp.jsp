<%-- 
    Document   : newjsp
    Created on : 4 Mar, 2018, 2:28:22 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="jquery-3.2.1.min.js"></script>
            <script>
                $(document).ready(function(){

                $("#type").change(function(e){
                e.preventDefault();
                
                var a=$("#type").val();
                
                $.ajax({
                url:"ajax/demo.jsp",
                data:{"type":a},
                type:"post",
                success:function(result)
                {    
                    
                      $("#msg").html(result)
                    
                },
                error:function()
                {
                    $("#msg").html("error in ajax")
                }
                });
                });

                });

            </script>  
    </head>
    <body>
        <h1>Hello World!</h1>
        <form >      
				  
	<select id="type" name="type" class="form-control">
        <option value="" >Choose Type</option>
       
        <option value="liquid" >Prescription</option>
         
        <option value="liquid" >Non-Prescription</option>
        
        </select>
            <input type="submit" value="Login" name="submit" id="s1">
            <div id="msg"></div>
        </form>
    </body>
</html>
