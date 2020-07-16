<%-- 
    Document   : index1
    Created on : 17 Feb, 2018, 3:46:15 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MediShop</title>
        <%@include file="headerfiles.jsp" %>
        <%@include file="call1.jsp" %>
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
         

  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
          <img src="images/wall/front1.jpg" alt="Los Angeles" style="width:100%; height: 400px;">
        <div class="carousel-caption">
          
        </div>
      </div>

      <div class="item">
          <img src="images/wall/non pre front.jpg" alt="Chicago" style="width:100%; height: 400px;">
        <div class="carousel-caption">
            <%--<h3>Personal Care</h3>
<p>Shop Now </p>--%>
        </div>
      </div>
    
      <div class="item">
          <img src="images/wall/25.jpg" alt="New York" style="width:100%; height: 400px;">
        <div class="carousel-caption">
         
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

	
<!-- top-brands -->
	<div class="top-brands">
		<div class="container">
			<h3>Hot Offers On Products</h3>
			<div class="agile_top_brands_grids">
		            <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                try
                {
                    String a="select * from addmedicinenonprecription order by bno limit 4";
                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                    ResultSet myres=mystatement.executeQuery();
                    if(myres.next())
                    {
          
                        do
                        {%>
                            <div class="col-md-3 top_brand_left">
					<div class="hover14 column">
						<div class="agile_top_brand_left_grid">
                                                    <div class="agile_top_brand_left_grid_pos">
								<img src="images/offer.png" alt=" " class="img-responsive" />
							</div>
							<div class="agile_top_brand_left_grid1">
								<figure>
									<div class="snipcart-item block" >
										<div class="snipcart-thumb">
											<%out.print("<center><a href='shownonmedidetail.jsp?bno="+myres.getString("bno")+"'><img src='userimages/"+myres.getString("image")+"' width='200px' height='170px'></a></center>");%>
                                                                                        
                                                                                        <center><p><%out.print(myres.getString("name"));%></p></center>
                                                                                        <center><h4>Rs.<%out.print(myres.getString("Price"));%>/-</h4></center>
										</div>
										<div class="snipcart-details top_brand_home_details">
											
												<fieldset>
													
                                                                                                 
                                                                                                    <%out.print("<input type='submit' name='submit' value='Add to cart' class='button btn btn-primary' id='"+myres.getString("bno")+"'>");%>
												</fieldset>
											
										</div>
									</div>
								</figure>
							</div>
						</div>
					</div>
				</div>
                        <%}while(myres.next());
                        
                    }
                    else
                    {
                        out.print("Catgeory not added");
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
				
				
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //top-brands -->
<!-- fresh-vegetables -->
	<div class="fresh-vegetables">
		<div class="container">
			<h3>Top Products</h3>
			<div class="w3l_fresh_vegetables_grids">
				<div class="col-md-3 w3l_fresh_vegetables_grid w3l_fresh_vegetables_grid_left">
					<div class="w3l_fresh_vegetables_grid2">
						<ul>
                                                    <li><i class="fa fa-check" aria-hidden="true"></i><a href="bandm.jsp">Baby And Mother</a></li>
                                                    <li><i class="fa fa-check" aria-hidden="true"></i><a href="beauty.jsp">Beauty</a></li>
                                                    <li><i class="fa fa-check" aria-hidden="true"></i><a href="showmedi.jsp">Medicines</a></li>
                                                    <li><i class="fa fa-check" aria-hidden="true"></i><a href="patanjali.jsp">AyurVedic</a></li>
                                                    <li><i class="fa fa-check" aria-hidden="true"></i><a href="pcare.jsp">Personal Care</a></li>
                                                    <li><i class="fa fa-check" aria-hidden="true"></i><a href="healthcare.jsp">Health Care</a></li>
                                                    <li><i class="fa fa-check" aria-hidden="true"></i><a href="wellness.jsp">Wellness</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-9 w3l_fresh_vegetables_grid_right">
					<div class="col-md-4 w3l_fresh_vegetables_grid">
						<div class="w3l_fresh_vegetables_grid1">
                                                    <img src="images/doctor.png" alt=" " class="img-responsive" />
						</div>
					</div>
					<div class="col-md-4 w3l_fresh_vegetables_grid">
						<div class="w3l_fresh_vegetables_grid1">
							<div class="w3l_fresh_vegetables_grid1_rel">
                                                            <img src="images/products/skin care2.jpg" alt=" " class="img-responsive" />
								
							</div>
						</div>
						
					</div>
					<div class="col-md-4 w3l_fresh_vegetables_grid">
						<div class="w3l_fresh_vegetables_grid1">
                                                    <img src="images/n1.png" alt=" " class="img-responsive" />
						</div>
						<div class="w3l_fresh_vegetables_grid1_bottom">
                                                    <img src="images/wall/AYURVEDIC.jpg" alt=" " class="img-responsive" />
						</div>
					</div>
					<div class="clearfix"> </div>
					
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //fresh-vegetables -->
<!-- newsletter -->
	<div class="newsletter">
		<div class="container">
			<div class="w3agile_newsletter_left">
				<h3>sign up for our newsletter</h3>
			</div>
			<div class="w3agile_newsletter_right">
				<form action="#" method="post">
					<input type="email" name="Email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
					<input type="submit" value="subscribe now">
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //newsletter -->
        <%@include file="script.jsp" %>
        <%@include file="footer.jsp" %>
    </body>
</html>
