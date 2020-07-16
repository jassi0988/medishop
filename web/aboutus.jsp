<%-- 
    Document   : aboutus
    Created on : 1 Apr, 2018, 4:10:03 PM
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
            .agileits_team_grid{
                margin-left: 186px;
            }
        </style>    
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
        <div class="privacy about">
            <h3>About Us</h3><br><br>
            <b style="font-size: 30px; letter-spacing: 4px; font-family: initial;">WHO WE ARE</b><p style=" letter-spacing:  4px;font-size:  22px;"> Jalandhar's most convenient online pharmacy
                medistore.com, Jaladhar Ki Pharmacy, is brought to you by the <b>Jaspreet</b> &<b> Harshul</b> Company – 
            one of jalandhar’s most trusted pharmacies, with over 10 years’ experience in dispensing quality medicines.
             At medistore.com, we help you look after your own health effortlessly as well as take care of loved ones wherever they may reside in jalandhar. 
             You can buy and send medicines from any corner of the country - with just a few clicks of the mouse.</p>
            <br> <br>
            <b style="font-size: 30px; letter-spacing: 4px; font-family: initial;">WHAT WE DO</b> <p style=" letter-spacing:  4px;font-size:  22px;">Offer fast online access to medicines with convenient home delivery
            At medistore.com, we make a wide range of prescription medicines and other health products conveniently available all across jalandhar. 
            Even second and third tier cities and rural villages can now have access to the latest medicines.
            Since we also offer generic alternatives to most medicines, online buyers can expect significant savings.</p>
            <br> <br>
            <b style="font-size: 30px; letter-spacing: 4px; font-family: initial;">ONE-STOP SHOP</b>
            <p style=" letter-spacing:  4px;font-size:  22px;">At medistore.com, we not only provide you with a wide range of medicines listed under various categories, 
            we also offer a wide choice of OTC products including wellness products, vitamins, diet/fitness supplements, 
            herbal products, pain relievers, diabetic care kits, baby/mother care products, beauty care products and surgical supplies.</p>
            <br> <br>
            <b style="font-size: 30px; letter-spacing: 4px; font-family: initial;">TRUST</b>
            <p style=" letter-spacing:  4px;font-size:  22px;">medistore.com continues a legacy of 100 years of success in the pharmaceutical industry. 
            We are committed to provide safe, reliable and affordable medicines as well as a customer service philosophy
            that is worthy of our valued customers’ loyalty. We offer a superior online shopping experience,
            which includes ease of navigation and absolute transactional security.</p>

            
	</div>
        <div class="team">
		<div class="container">
			<h3>Meet Our Amazing Team</h3>
			<div class="agileits_team_grids">
				<div class="col-md-3 agileits_team_grid">
                                    <img src="images/harsh.jpg" alt=" " class="img-responsive" />
					<h4>Harshul Bagha</h4>
					<p>Owner</p>
					<ul class="agileits_social_icons agileits_social_icons_team">
						<li><a href="#" class="facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						<li><a href="#" class="twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
						<li><a href="#" class="google"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
					</ul>
				</div>
				<div class="col-md-3 agileits_team_grid">
                                    <img src="images/jassi.jpg " alt=" " class="img-responsive" />
					<h4>Jaspreet Singh</h4>
					<p>Manager</p>
					<ul class="agileits_social_icons agileits_social_icons_team">
						<li><a href="#" class="facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						<li><a href="#" class="twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
						<li><a href="#" class="google"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
					</ul>
				</div>
			
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
        
        <%@include file="script.jsp" %>
        <%@include file="footer.jsp" %>s
    </body>
</html>
