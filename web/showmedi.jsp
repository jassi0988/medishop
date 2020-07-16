<%-- 
    Document   : showmedi
    Created on : 20 Mar, 2018, 5:01:03 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="headerfiles.jsp" %>
        <style>
            .line{
                background: #FFFFFF;
                padding: .5em;
                
                position:relative;
                width:70%;
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
            .cart{
                padding: 1.2em 1.5em;
                font-weight: bold;
                border-radius: 2px;
                    margin-top: 15px;
                    color: #FFFFFF;
                    background-color: #19a9b4;
                    border: 1px solid transparent;
                    font-size: 14px;
            }
             .heading{
                font-weight: bold;
                letter-spacing: 5px;
                color: #19a9b4;
                
            }
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
              .back{
                  
              }
        </style>   
        <script src="jquery-3.2.1.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
            $(".cart").click(function(e){
                e.preventDefault();           
                var a=$(this).attr("id");
               
                $.ajax({
                    url:'ajax/addtocart.jsp',
                    data:{n:a},
                    type:'post',
                    success:function(result) 
                    {        
                        if(result==0)
                        {
                            window.alert("Please Upload Prescription");
                        }
                        else
                        {
                            window.location.href="cart.jsp"
                        }
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
         <br>
         
         <center><h1 class="heading">Medicines</h1></center>
         <br>
         <div class="item active">
             <img src="images/wall/New folder/illigal medicines 4 (1).jpg" alt="Los Angeles" style="width:100%; height: 400px;">
        <div class="carousel-caption">
          
        </div>
      </div>
         <br><br>
         <form>
                <center><div class="back container" style="background-color: #e2e2e2;padding-top: 12px;padding-bottom: 7px;"><div class="upload-btn-wrapper">
            <button class="btn">Choose File</button>
            <input type="file" name="myfile" id="file">
                        </div><input type="submit" name="submit" value="Upload Prescription" class="btn" style="margin-left:  50px;background-color: #19a9b4; margin-top: -37px;border: #ffffff;color:  white;"><input type="submit" name="del" value="Delete Prescription" class="btn" style="margin-left:  50px;background-color: #19a9b4; margin-top: -37px;border: #ffffff;color:  white;"></div></center>
            
            <%
                if(request.getParameter("submit")!=null)
                {
                    if(request.getParameter("myfile")!=null)
                    {
                        session.setAttribute("image", request.getParameter("myfile"));
                    }
                    else
                    {
                        session.setAttribute("image", "");
                    }
                }
                else if(request.getParameter("del")!=null)
                {
                    session.invalidate();
                    response.sendRedirect("showmedi.jsp");
                }
            %>
            </form>
            <br><br>
            <center><h2></h2></center>
         <div>
            <center><a href="diseasetable.jsp" style="font-size: 35px;text-transform: uppercase;letter-spacing: 7px; color: black;">Serach By Diseases</a> </center>
            <br>
            
         </div>
         <br>
         <form>
        <div class="container">
        <div class="row">
        <br>   
            <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                try
                {
                    String a="select * from addmedicineprecription";
                    PreparedStatement mystatement=myconnection.prepareStatement(a);
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
                            out.print("<td align='center'><div class='line' id='gap'><a href='showmedidetail.jsp?bno="+myres.getString("bno")+"&dtype="+myres.getString("drugtype")+"'>"
                            + "<br><div class='inline'><img src='userimages/"+myres.getString("image")+"' width='200px' height='200px'></a></div><br>"
                            + "<b>"+myres.getString("name")+ "<br>"
                            + "Rs."+myres.getString("price")+"</b><br>"
                            + "<div class='msg'></div>"
                            + "<button type='button' class='cart' id='"+myres.getString("bno")+"' >Add To Cart</button></div></td>");
                            
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
         </form>
            
         <%@include file="script.jsp" %>
        <%@include file="footer.jsp" %>
    </body>
</html>
