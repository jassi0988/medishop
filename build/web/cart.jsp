<%-- 
    Document   : cart
    Created on : 26 Mar, 2018, 3:17:35 PM
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
        <%@include file="cartcss.jsp" %>
        
        <style>
            .totals{
                margin-right: 550px;
            }     
            .but{
                margin-right: 35px;
            } 
            .line{
                
            }
        </style>   
        <script src="jquery-3.2.1.min.js"></script>
        <script>
            $(document).ready(function(){ 
            /* Set rates + misc */
            var taxRate = 0.05;
            var shippingRate = 15.00; 
            var fadeTime = 300;
            
            var nprice=0;
            var t=0;

            /* Assign actions */
            $('.product-quantity input').change( function() {
              updateQuantity(this);
            });

            $('.product-removal button').click( function() {
              removeItem(this);
            });


            /* Recalculate cart */
            function recalculateCart()
            {
              var subtotal = 0;

              /* Sum up row totals */
              $('.product').each(function () {
                subtotal += parseFloat($(this).children('.product-line-price').text());
              });

              /* Calculate totals */
              var tax = subtotal * taxRate;
              var shipping = (subtotal > 0 ? shippingRate : 0);
              var total = subtotal + tax + shipping;
              t=subtotal + tax + shipping;
              /* Update totals display */
              $('.totals-value').fadeOut(fadeTime, function() {
                $('#cart-subtotal').html(subtotal.toFixed(2));
                $('#cart-tax').html(tax.toFixed(2));
                $('#cart-shipping').html(shipping.toFixed(2));
                $('#cart-total').html(total.toFixed(2));
                if(total == 0){
                  $('.checkout').fadeOut(fadeTime);
                }else{
                  $('.checkout').fadeIn(fadeTime);
                }
                $('.totals-value').fadeIn(fadeTime);
              });
            }

            var quantity1,lineprice1;
            /* Update quantity */
            function updateQuantity(quantityInput)
            {
              /* Calculate line price */
              var productRow = $(quantityInput).parent().parent();
              var price = parseFloat(productRow.children('.product-price').text());
              var quantity = $(quantityInput).val();
              var linePrice = price * quantity;
              nprice= price * quantity;
              quantity1= $(quantityInput).val();
              lineprice1= price * quantity;
              /* Update line price display and recalc cart totals */
              productRow.children('.product-line-price').each(function () {
                $(this).fadeOut(fadeTime, function() {
                  $(this).text(linePrice.toFixed(2));
                  recalculateCart();
                  $(this).fadeIn(fadeTime);
                });
              });  
            }
            
            
            /*AJAX*/
            $(".product-quantity").click(function(e){
            e.preventDefault();
                var a=$(this).attr("bno");
                
                $.ajax({
                url:'delete/updatecart.jsp',
                type:'post',
                data:{n:a,qty:quantity1,price:nprice},
                error: function(e) 
                {
                tabledata.append("Error" + e); 
                }
                }); 
            });
            
            
            $("#next").click(function(e){
                e.preventDefault();           
                if(t!=0)
                {
                    if(<%=session.getAttribute("username")!=null%>)
                    {
                       
                        $.ajax({
                        url: "payment.jsp",
                        
                        data:{"r":t},
                        success: function (result)
                        {
                            window.location.href="payment.jsp";
                        },
                        error: function(e) 
                        {
                            window.alert("error");
                        }
                        }); 
                    }
                    else
                    {
                        window.location.href="log.jsp";
                    }
                }
                else 
                {
                    var a=$("#cart-total").attr("frate");
                    if(<%=session.getAttribute("username")!=null%>)
                    {
                        
                        $.ajax({
                        url: "payment.jsp",
                        
                        data:{"r":a},
                        success: function (result)
                        {
                            window.location.href="payment.jsp";
                        },
                        error: function(e) 
                        {
                            window.alert("error");
                        }
                        }); 
                        
                    }
                    else
                    {
                        window.location.href="log.jsp";
                    }

                }
                
            }); 
           
            
            
            /* Remove item from cart */
            function removeItem(removeButton)
            {
              /* Remove row from DOM and recalc cart total */
              var productRow = $(removeButton).parent().parent();
              productRow.slideUp(fadeTime, function() {
                productRow.remove();
                recalculateCart();
              });
            }
        });
        </script>
        <script src="jquery-3.2.1.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
            $(".remove-product").click(function(e){
            e.preventDefault();
                var a=$(this).attr("bno");
                $.ajax({
                url:'delete/deletecart.jsp',
                type:'post',
                data:{n:a},
                error: function(e) 
                {
                tabledata.append("Error" + e); 
                }
                });            
            }); 
            });
        </script>
        <script src="jquery-3.2.1.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
            
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
         <br>
    <center><h1>Shopping Cart</h1></center>
              

        <div class="shopping-cart">

          <div class="column-labels">
            <label class="product-image">Image</label>
            <label class="product-details">Product</label>
            <label class="product-price">Price</label>
            <label class="product-quantity">Quantity</label>
            <label class="product-removal">Remove</label>
            <label class="product-line-price">Total</label>
          </div>
            
        <%
            
            String bno="",name="",email="",qty="",price="",image="",tprice="";
            int rate=0,tax=0,trate=0;
                            try
                            {
                                String var=request.getParameter("n");
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                                try
                                {
                                    String a="select * from cart where email=?";
                                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                                    if(session.getAttribute("username")!=null)
                                    {
                                        mystatement.setString(1, session.getAttribute("username").toString());
                                    }
                                    else
                                    {
                                        mystatement.setString(1, session.getId());
                                    }
                                    ResultSet myres=mystatement.executeQuery();
                                    if(myres.next())
                                    {                                        
                                        do
                                        { 
                                            bno=myres.getString("bno");
                                            name=myres.getString("mediname");
                                            email=myres.getString("email");
                                            qty=myres.getString("qty");
                                            price=myres.getString("price");                                        
                                            image=myres.getString("image");
                                            tprice=myres.getString("tprice");%>
                                            
                                            <div class="product">
                                            <div class="product-image">
                                                <% out.print("<img src='userimages/" + image + "' style='height: 100px; width: 100px;'>");%>
                                            </div>
                                            <div class="product-details">
                                                <div class="product-title"><%=name%></div>
                                              
                                            </div>
                                                <div class="product-price" style="margin-top: 30px;"><%=price%></div>
                                            <div class="product-quantity" bno="<%=bno%>" style="margin-top: 30px;">
                                              <input type="number" value="<%=qty%>" min="1">
                                            </div>
                                            <div class="product-removal">
                                              <button class="remove-product" style="margin-top: 30px;" id="button" bno="<%=bno%>">
                                                Remove
                                              </button>
                                            </div>
                                            <div class="product-line-price" style="margin-top: 30px;"><%=tprice%></div>
                                          </div>
                                       <% 
                                           
                                           rate=Integer.parseInt(tprice)+rate;
                                               }while(myres.next());
                                    }
                                    else
                                    {
                                        out.print("<center><h3><div class='alert alert-danger' style='margin-right: 130px;'>Your Cart Is Empty</div></h3></center>");
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

                            tax=rate/100*5;
                            
                            trate=tax+15+rate;
                            %>
                            
                            <div class="line"></div>                    
      




          <div class="totals">
              
            <div class="totals-item">
              <label>Subtotal</label>
              <div class="totals-value" id="cart-subtotal"><%=rate%></div>
            </div>
            <div class="totals-item">
              <label>Tax (5%)</label>
              <div class="totals-value" id="cart-tax"><%=tax%></div>
            </div>
            <div class="totals-item">
              <label>Shipping</label>
              <div class="totals-value" id="cart-shipping">15</div>
            </div>
            <div class="totals-item totals-item-total">
              <label>Grand Total</label>
              <div class="totals-value" id="cart-total" frate="<%=trate%>"><%=trate%></div>
            </div>
              <div class="but">
              <button class="checkout" id="next" name="payment">Checkout</button>
              </div>
          </div>
              
              

        </div>
       
        <%@include file="script.jsp" %>
        <%@include file="footer.jsp" %>
        
    </body>
</html>
