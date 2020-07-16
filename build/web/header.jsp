<%@page import="java.sql.*"%>
<!-- header -->
<head>
    <%@include file="newheadercss.jsp" %>
    <%@include file="comboboxcss.jsp" %>
    <style>
        
        .badge {
        padding-left: 9px;
        padding-right: 9px;
        -webkit-border-radius: 9px;
        -moz-border-radius: 9px;
        border-radius: 9px;
      }

      #cart-badge {
          margin-top: 20px;
          font-size: 14px;
          background: #19a9b4;
          color: #fff;
          padding: 0 5px;
          vertical-align: top;
      }
     </style>
     
</head>   
<body> 
     <%@include file="cartitemno.jsp" %>
                            
	<div class="agileits_header">
		<div class="w3l_offers">
                    <a href="index.jsp"><img src="images/flogo1.png"></a>
		</div>
                
		<div class="w3l_search">
                    
                    <li><i class="fa fa-phone">    Call:0181-2421510</i></li>
                    <li><a href="log.jsp"><font><i class="fa fa-pencil">   Create Account</i></font></a></li>
                    <li><a href="log.jsp"><font><i class="fa fa-sign-in">   Sign In</i></font></a></li>
                    <a href="cart.jsp"><i class="fa fa-shopping-cart"></i></a>
                    <lavel id="cart-badge" class="badge badge-warning"><%=count%></lavel>
                    <a href="location.jsp"><i class="fa fa-map-marker"></i>   Shop Location</a>
                    <a href="adminlog.jsp"><i class="fa fa-sign-in" style="font-size:30px;margin-left: .5em;color: #19a9b4;"></i>        Admin Pannel</a>
                </div> 
            
                <div class="w3l_search" id="no">
                    
                    <form action="search.jsp" method="post" >
                        
                        <input type="text" name="product" placeholder="Search A Product" >
                        <input type="submit" value=" ">
                          
                    </form>
                
                </div> 
			
		
		
            <div class="clearfix" style="border-bottom: 1px solid #eee;"> </div>
	</div>
<!-- script-for sticky-nav -->
	<script>
	$(document).ready(function() {
		 var navoffeset=$(".agileits_header").offset().top;
		 $(window).scroll(function(){
			var scrollpos=$(window).scrollTop(); 
			if(scrollpos >=navoffeset){
				$(".agileits_header").addClass("fixed");
			}else{
				$(".agileits_header").removeClass("fixed");
			}
		 });
		 
	});
	</script>
<!-- //script-for sticky-nav -->
<div class="head">

	<div class="logo_products">
		<div class="container">
			
			<div class="w3ls_logo_products_left1">
				<ul class="special_items">

                                    <li><a href="pcare.jsp"><p id="he">Personal Care</p></a></li>
                                    <li><a href="bandm.jsp"><p id="he">Baby And Mother</p></a></li>
                                     <li><a href="showmedi.jsp"><p id="he">Medicines</p></a></li>
                                    <li><a href="beauty.jsp"><p id="he">Beauty</p></a></li>
                                    <li><a href="healthcare.jsp"><p id="he">HealthCare</p></a></li>
                                    <li><a href="wellness.jsp"><p id="he">Wellness</p></a></li>
                                    <li><a href="patanjali.jsp"><p id="he">Ayurvedic</p></a></li>
                                    
                                    
                                    
				</ul>
			</div>
			
			<div class="clearfix" > </div>
		</div>
	</div>

</div>

</body>
<!-- //header -->
