<%-- 
    Document   : contactus
    Created on : 2 Apr, 2018, 1:34:51 PM
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
            h3.title:after{
                background: #19a9b4;
            }
        </style>
        <script src="jquery-3.2.1.min.js"></script>
            <script>
               $(document).ready(function(){
               $(".yes").click(function(e){
                e.preventDefault();
                    var a=$("#name").val();
                    var b=$("#email").val();
                    var c=$("#phone").val();
                    var d=$("#subject").val();
                    var e=$("#feedback").val();
                    $.ajax({
                    url:'ajax/feedback.jsp',
                    type:'post',
                    data:{name:a,email:b,phone:c,subject:d,feedback:e},
                    beforeSend:function()
                    {                             
                        
                        $("#show").html("loading...")
                    },
                    success:function(result)
                    {
                        
                        $("#show").html(result)                      
                    },
                    error:function(e)
                    {
                        $("#show1").html("error  " +e)
                    }
                    }); 
                });
                }) ;
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
         
       
        <div class="mail">
         
			<h3>Mail Us</h3>
			<div class="agileinfo_mail_grids">
				<div class="col-md-4 agileinfo_mail_grid_left">
					<ul>
                                            <li><i class="fa fa-home" style="color: #19a9b4;" aria-hidden="true"></i></li>
						<li>address<span>868 1st Avenue NYC.</span></li>
					</ul>
					<ul>
						<li><i class="fa fa-envelope" style="color: #19a9b4;" aria-hidden="true"></i></li>
						<li>email<span><a href="mailto:info@example.com">info@example.com</a></span></li>
					</ul>
					<ul>
						<li><i class="fa fa-phone" style="color: #19a9b4;" aria-hidden="true"></i></li>
						<li>call to us<span>(+123) 233 2362 826</span></li>
					</ul>
				</div>
				<div class="col-md-8 agileinfo_mail_grid_right">
                                    <form class="form1" method="post">
						<div class="col-md-6 wthree_contact_left_grid">
                                                    <input type="text" name="Name" id="name" placeholder="Name">
                                                    <input type="email" name="Email" id="email" placeholder="Email">
						</div>
						<div class="col-md-6 wthree_contact_left_grid">
                                                    <input type="text" name="Telephone" id="phone" placeholder="Telephone">
                                                    <input type="text" name="Subject" id="subject" placeholder="Subject">
						</div>
						<div class="clearfix"> </div>
                                                <textarea  name="Message" id="feedback" placeholder="Feedback"></textarea>
                                                
                                                <center><input type="submit" name="submit" style="background:  #19a9b4;" value="Submit" class="yes">  </center>                                         
						 <br>
                                                 <center><div  id="show"></div></center>
                                                
					</form>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
    
<!-- //mail -->
		
		<div class="clearfix"></div>
	
<!-- //banner -->
<!-- map -->
	<div class="map">
		
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d109066.42047314157!2d75.50337905161291!3d31.322378738751176!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x391a5a5747a9eb91%3A0xc74b34c05aa5b4b8!2sJalandhar%2C+Punjab!5e0!3m2!1sen!2sin!4v1522738405327" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
	</div>

        <%@include file="script.jsp" %>
        <%@include file="footer.jsp" %>
    </body>
</html>
