<%-- 
    Document   : diseasetable
    Created on : 30 Mar, 2018, 11:42:17 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="headerfiles.jsp" %>
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
         <br><br><center><h2 style="font-size: 35px;text-transform: uppercase;letter-spacing: 7px; color: black;">Serach By Diseases</h2></center><br><br>
         <%
            String product=request.getParameter("product");
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
                                        int sno=1;
                                        do
                                        {
                                            if(col==0)
                                            {
                                                out.print("<tr>");
                                            }
                                            out.print("<td align='center' style='padding-bottom: 30px; font-size: 22px; letter-spacing: 2px; padding-left: 85px;'><a href='showdiseasemedi.jsp?name="+myres.getString("drugtype")+"' style='float: left;'>"+sno+"."+myres.getString("drugtype")+"</a></td>");
                                            sno++;
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
                                        out.print("<center><h3><div class='alert alert-danger'>No Result Found </div></h3></center>");
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
         
         
        <%@include file="script.jsp" %>
        <%@include file="footer.jsp" %>
        
    </body>
</html>
