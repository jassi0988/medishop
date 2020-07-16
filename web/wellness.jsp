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
         <br>
         
         <center><h1 class="heading">WellNess</h1></center>
         <br>
          <div class="item active">
              <img src="images/wall/New folder/WELLNESS IMG.jpg" alt="Los Angeles" style="width:100%; height: 400px;">
        <div class="carousel-caption">
          
        </div>
      </div>
         <br><br>
        <div class="container">
        <div class="row">
            <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                try
                {
                    String a="select * from addmedicinenonprecription where cat='Wellness'";
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
                            out.print("<td align='center'><div class='line' id='gap'><a href='shownonmedidetail.jsp?bno="+myres.getString("bno")+"&desc="+myres.getString("description")+"'>"
                            + "<br><div class='inline'><img src='userimages/"+myres.getString("image")+"' width='200px' height='200px'></a></div><br>"
                            + "<b>"+myres.getString("name")+ "<br>"
                            + "Rs."+myres.getString("price")+"</b><br>"
                            + "<button type='button' class='btn btn-primary' id='"+myres.getString("bno")+"'>Add To Cart</button></div></td>");
                            
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

