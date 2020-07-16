<html>
    <head>
        <%@include file="mycss.jsp" %>
        <script src="js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
  <style>
        img{
            height: 100px;
            margin-left: -70px;
            margin-top: -30px;
            margin-bottom: 15px;
            margin-right: 70px;
        }
        
     </style>
    </head>   
   

    <body>     
<!-- header -->
	
<!-- script-for sticky-nav -->
	<div class="head">
            
<!-- //script-for sticky-nav -->
	<div class="logo_products" id="h">
		<div class="container">
                    
			<div class="w3ls_logo_products_left1" >
                            
				<ul class="special_items">
                                    <li><a href="adminindex.jsp"><img src="images/mylogo1.png"></a></li>
                                    <li><a href="addmedicine.jsp"><p id="ja">Add Medicine</p></a></li>
                                    <li><div class="dropdown">
                                        <p class="dropbtn" id="ja">Manage<i class="fa fa-caret-down" id="car"></i></p>
                                        <div class="dropdown-content">
                                        <a href="adddisease.jsp">Add Disease</a>
                                        <a href="addcompany.jsp">Add Company</a>
                                        <%--<a href="vdisease.jsp">View Diseases</a>
                                        <a href="vcompany.jsp">View Company</a>--%>
                                        </div>
                                        </div>
                                    </li>
                                    <li><div class="dropdown">
                                            <p class="dropbtn" id="ja">Purchases<i class="fa fa-caret-down" id="car"></i></p>
                                        <div class="dropdown-content">
                                        <a href="buymedicine.jsp">Buy Medicine</a>
                                        
                                        </div>
                                        </div>
                                    </li>
                                    <li><div class="dropdown">
                                            <p class="dropbtn" id="ja">List<i class="fa fa-caret-down" id="car"></i></p>
                                        <div class="dropdown-content">
                                        <a href="premedilist.jsp">Prescription</a>
                                        <a href="nonpremedilist.jsp">Non Prescription</a>
                                        </div>
                                        </div>
                                    </li>
                                    
                                    <li><a href="stock.jsp"><p id="ja">Stock</p></a></li>
                                    <li><a href="vcoustmer.jsp"><p id="ja">Coustmers</p></a></li>
                                    
                                    <li class="dropdown profile_details_drop" id="jas">
					<a href="#"  class="dropdown-toggle" data-toggle="dropdown"><i id="user" class="fa fa-user" style="font-size:17px;" aria-hidden="true"></i><span id="user" class="caret"></span></a>
					<div class="mega-dropdown-menu">
						<div class="w3ls_vegetables">
                                                    <ul class="dropdown-menu drp-mnu" style="padding: 0px;">						
                                                                <li><a href="log.jsp"><%String adm=session.getAttribute("adminname").toString();
                                                                                        out.print(adm);%></a></li>
                                                                <li><a href="admindetail.jsp">Admin Detail</a></li>
                                                                <li><a href="adminlogout.jsp">Logout</a></li>
							</ul>
						</div>                  
					</div>	
				</li>
                                    
				</ul>
                                
			</div>
			
			
		</div>
	</div>
                                
        </div>
                                
<!-- //header -->
    </body>
</html>