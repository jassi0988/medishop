<%-- 
    Document   : showdiseasemedi
    Created on : 31 Mar, 2018, 12:09:12 AM
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
        
         <div class="container">
        <div class="row">
        <br>    
        
        <center><h2 style="font-size: 35px;text-transform: uppercase;letter-spacing: 7px; color: black;"><% out.print(request.getParameter("name"));  %></h2></center>
        
        <br><br>
            <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                try
                {
                    String a="select * from addmedicineprecription where drugtype=?";
                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                    mystatement.setString(1,request.getParameter("name"));
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
         
        <%@include file="script.jsp" %>
        <%@include file="footer.jsp" %>
        
    </body>
</html>
