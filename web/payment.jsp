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
        
        <link rel="stylesheet" href="css/f4/font-awesome.min.css">
        <link rel="stylesheet" href="css/f4/font-awesome.css">
        <title>JSP Page</title>
        <%@include file="headerfiles.jsp" %>
        <style>
            label{
                    display: inline-block;
                    margin-bottom: 5px;
                    font-weight: 500; 
                    font-size: 1.2em;
            }
            h2{
                letter-spacing: 4px;
            }
            h3{
                letter-spacing: 3px;
            }
            .tot{
                margin-top: 5px;
            }
            .bo{
                    background-color: #f2f2f2;
                    padding: 5px 20px 15px 20px;
                    border: 1px solid lightgrey;
                    border-radius: 3px;
                    margin-left: 49px;
                    width: 93%;
            }
            input[type=text], select {
                width: 90%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                margin-bottom: 25px;
            }

            input[type=radio], select {
                width: 90%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }

            textarea, select {
                width: 90%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }

            input[type=submit] {

                width: 30%;
                background-color: #4CAF50;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                border-radius: 4px;
                cursor: pointer;

            }

            input[type=file] {
                margin-top: -4px;
                 border: 1px solid #ccc;
                display: inline-block;
                padding: 12px 20px;
                cursor: pointer;
                width: 90%;
          border: 1px solid rgba(0, 0, 0, .15);
          border-radius: 4px;

            }

            input[type=submit]:hover {
                background-color: #45a049;
            }


        </style>
        <script src="jquery-3.2.1.min.js"></script>
        <script>
            $(document).ready(function(){

                $("#submit").click(function(e){
                e.preventDefault();
                var a=$("#name").val();
                var b=$("#email").val();
                var c=$("#address").val();
                var d=$("#city").val();
                var e=$("#state").val();
                var f=$("#zip").val();
                var g=$("#ncard").val();
                var h=$("#accno").val();
                var i=$("#exp").val();
                var j=$("#cvv").val();
                var k=$("#hhh").attr("tprice");
                
                if(a.length==0 ||b.length==0 ||c.length==0 ||d.length==0 ||e.length==0 ||f.length==0 ||g.length==0 ||h.length==0 ||i.length==0 ||j.length==0 )
                {
                    alert("Please Enter All Fields")
                }
                else
                {
                    $.ajax({
                    url:"ajax/deliv.jsp",
                    data:{"name":a,"email":b,"address":c,"city":d,"state":e,"zip":f,"ncard":g,"accno":h,"exp":i,"cvv":j,"trate":k},
                    type:"post",
                    beforeSend:function()
                       {
                            $("#msg1").html("<center><img src='images/load.gif' height='50px' width='50px'></center>")
                       },
                    success:function(result)
                    {    
                        alert("Your Payment Is Sucessfully Done")
                        
                        window.location.href="index.jsp"
                    },
                    error:function()
                    {
                        $("#msg1").html("error in ajax")
                    }

                    });
                }
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
         
    <br><br><center><h2>Payment</h2></center><br><br>
         <div class="bo"> 
             <form method="post">
        <div class="container">
            <div class="col-md-12">
                <div class="col-md-6">
                    <br><center><h2>Billing Address</h2></center><br>
                    <label>Name</label>
                    <br><input type="text" placeholder="Full Name" name="name" id="name"><br>
                    <label>Email</label><br>
                    <input type="text" placeholder="Email" name="email" id="email"><br>
                    <label>Address</label><br>
                    <input type="text" placeholder="Address" name="address" id="address"><br>
                    <label>City</label><br>
                    <input type="text" placeholder="City" name="city" id="city"><br>
                    <label>State</label><br>       
                    <input type="text" placeholder="State" name="state" id="state"><br>
                    <label>Zip</label><br>
                    <input type="text" placeholder="Zip" name="zip" id="zip"><br>
                    
                    
                    
                </div>
                <div class="col-md-6">
                    <br><center> <h2>Payment</h2></center><br>
                    <label>Accepted Cards</label><br>
                    <img src="images/card.png" " style="margin-bottom: 34px;margin-top:16px; margin-left: 1px;">
                    <br><label>Name On Card</label><br>
                    <input type="text" placeholder="Jaspreet Singh" name="ncard"  id="ncard"><br>
                    <label>Account Number</label><br>
                    <input type="text" placeholder="xxxx xxxx xxxx xxxx" name="accno" class="credit-card-number" id="accno"><br>
                   
                    <label>Valid Thru</label><br>
                    <input type="text" placeholder="mm/yy" name="exp" class="expiration-month-and-year" id="exp"><br>
                    <label>Cvv</label><br>
                    <input type="text" placeholder="xxx" name="cvv" class="security-code" id="cvv">
                   
                </div>
                
            </div>
          <%
            
            String tprice="";
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
                                    mystatement.setString(1, session.getAttribute("username").toString());
                                    ResultSet myres=mystatement.executeQuery();
                                    if(myres.next())
                                    {                                        
                                        do
                                        { 
                                            tprice=myres.getString("tprice");
                                            rate=rate+Integer.parseInt(tprice);
                                        }while(myres.next());
                                    }
                                    else
                                    {
                                        response.sendRedirect("index.jsp");
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
           
        </div>    
                            <div id="hhh"  tprice="<%=trate%>"></div>
                            <br> <center> <h3>Total Amount : Rs. <%out.print(trate);%></h3> </center>
             <br><div id="msg1"></div>
             <center><input type="submit" value="make Payment"  name="submit" id="submit"></center>
                                
       </form>
         </div>
    <script type="text/javascript" src="js/creditly.js"></script>
        <link rel="stylesheet" href="css/creditly.css" type="text/css" media="all" />

		<script type="text/javascript">
			$(function() {
			  var creditly = Creditly.initialize(
				  ' .expiration-month-and-year',
                                  ' .credit-card-number',
                                  ' .security-code'
				  );

			  
			});
		</script>
        <%@include file="script.jsp" %>
        <%@include file="footer.jsp" %>
    </body>
</html>
