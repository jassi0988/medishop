<%-- 
    Document   : shownonmedidetail
    Created on : 25 Mar, 2018, 1:30:28 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="headerfiles.jsp" %>
        <%@include file="proddetailcss.jsp" %>
        <style>
            .line{
                background: #FFFFFF;
                padding: .5em;
                
                position:relative;
                width:312px;
                border: 1px solid rgba(0, 0, 0, 0.19);
                border-radius: 4px;
                -webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
                box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
                
                 padding: 5px;
            }
            .inline{
                height: 240px;
                background: #FFFFFF;
                padding: .5em;
                margin-top: -18px;
                border: 1px solid rgba(0, 0, 0, .15);
                box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
            }
            #gap{
                margin-bottom: 60px;
                
            }
            .rectangle{
                background: #eee;
                padding: 3em;
            }
            
                .btn-primary{
                padding: 1.2em 1.5em;
                font-weight: bold;
                border-radius: 2px;
                    margin-top: 15px;
            }
             .heading{
                font-weight: bold;
                letter-spacing: 5px;
                color: #19a9b4;
                
            }
        </style> 
        <script src="jquery-3.2.1.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
            $(".add-to-cart").click(function(e){
                e.preventDefault();           
                var a=$(this).attr("bno");
                $.ajax({
                    url:'ajax/addtocartnon.jsp',
                    data:{n:a},
                    type:'post',
                    success:function(result) 
                    {                       
                        window.location.href="cart.jsp"
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
         
         <%
            
            String bno="",name="",cat="",company="",price="",desc="",expdate="",mfgdate="",image=""; 
                            try
                            {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                                try
                                {
                                    String a="select * from addmedicinenonprecription where bno=?";
                                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                                    mystatement.setString(1, request.getParameter("bno"));
                                    ResultSet myres=mystatement.executeQuery();
                                    if(myres.next())
                                    {
                                        bno=myres.getString("bno");
                                        name=myres.getString("name");
                                        cat=myres.getString("cat");
                                        company=myres.getString("company");
                                        price=myres.getString("price");
                                        desc=myres.getString("description");
                                        expdate=myres.getString("expdate");
                                        mfgdate=myres.getString("mfddate");
                                        image=myres.getString("image");
                                    }
                                    else
                                    {
                                    out.print("Invalid Id");
                                    }

                                }
                                catch(Exception e)
                                {
                                out.print("as"+e.getMessage());
                                }

                            }
                            catch(Exception e)
                            {
                            out.println("Error in Connection " + e.getMessage());
                            }
    %>
    <br>
        <center><h1 class="heading" >Product Details</h1></center>
        
        
        <div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
                                                    <div class="tab-pane active" id="pic-1"><% out.print("<img src='userimages/" + image + "'>");%></div>
						  
						</div>
						
						
					</div>
					<div class="details col-md-6">
						<h3 class="product-title"><%=name%></h3>
						
						<p class="product-description"><%=desc%></p>
						<h4 class="price">price: <span>Rs.<%=price%></span></h4>
						
						<h5 class="sizes">Category:     <%=cat%></h5>
						
                                                <h5 class="sizes">Company:     <%=company%></h5>
                                                <h5 class="sizes">Expiry Date:     <%=expdate%></h5>
                                                <h5 class="sizes">Manufacturing Date:     <%=mfgdate%></h5>
						<div class="action">
							<%out.print("<button class='add-to-cart btn btn-default' type='button' bno='"+bno+"'>add to cart</button>");%> 
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
                                                
                                               <br><br> <br><br><center><h1 class="heading">Related Medicines</h1></center><br><br>
                                                
        <div class="container">
        <div class="row">
            <div class="rectangle">
           <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                try
                {
                    String a="select * from addmedicinenonprecription where description=?";
                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                    mystatement.setString(1, request.getParameter("desc"));
                    ResultSet myres=mystatement.executeQuery();
                    if(myres.next())
                    {
                        out.print("<table width='100%'>");
                        int col=0;
                        do
                        {
                            if(col==0)
                            {
                                out.print("<tr>");
                            }
                            out.print("<td align='center'><div class='line' id='gap'><a href='shownonmedidetail.jsp?bno="+myres.getString("bno")+"&desc="+myres.getString("description")+"'>"
                            + "<br><div class='inline'><img src='userimages/"+myres.getString("image")+"' width='200px' height='200px'></a></div><br>"
                            + "<b>"+myres.getString("name")+ "<br>"
                            + "Rs."+myres.getString("price")+"</b><br>"
                            + "<button type='button' class='btn btn-primary'>Add To Cart</button></div></td>");
                            
                            col++;
                            if(col==3)
                            {
                                out.print("</tr>");
                                
                                col=0;
                                
                            }
                        }while(myres.next());
                        out.print("</table>"); 
                    }
                    else
                    {
                        out.print("Catgeory not added");
                    }

                }
                catch(Exception e)
                {
                out.print("<h1><center><br>User already Exits</center></h1>");
                }

            }
            catch(Exception e)
            {
            out.println("Error in Connection " + e.getMessage());
            }


            %>                                     
        </div>
        </div>
        </div>
        
                                                
         <%@include file="script.jsp" %>
        <%@include file="footer.jsp" %>  
    </body>
</html>
