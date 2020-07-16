<%-- 
    Document   : search
    Created on : 30 Mar, 2018, 10:53:54 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="headerfiles.jsp"%> 
        <style>
        #cen{
                text-align: center;
                color: #FBB448;
                padding-top: 1em;
        }  
            #customers {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #customers td, #customers th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customers tr:nth-child(even){background-color: #f2f2f2;}

        #customers tr:hover {background-color: #ddd;}

        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #4CAF50;
            color: white;
        }
        h2{
            letter-spacing: 5px;
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
        
         
         <div class="container-fluid">
             <h1 id="cen">Search For '<%out.print(request.getParameter("product"));%>'</h1><br><br>
        <div class="col-md-6">
            <center><h2>Non-Prescription</h2></center><br>
        <%
            String product=request.getParameter("product");
                            try
                            {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                                try
                                {
                                    String a="select * from addmedicinenonprecription where name like ?";
                                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                                    mystatement.setString(1, "%" +product+ "%");
                                    ResultSet myres=mystatement.executeQuery();
                                    if(myres.next())
                                    {
                                        out.print("<table  id='customers'>"
                                        + "<tr>"        
                                        + "<th>Name</th>"
                                        + "<th>Description</th>"
                                        + "<th>Cost</th>"
                                        + "<th>Details</th>"        
                                        + "</tr>");
                                        do
                                        {
                                            out.print("<tr>"
                                            + "<td>"+myres.getString("name")+"</td>"
                                            + "<td>"+myres.getString("description")+"</td>"
                                            + "<td>"+myres.getString("price")+"</td>"
                                            + "<td><a href='shownonmedidetail.jsp?bno="+myres.getString("bno")+"&desc="+myres.getString("description")+"'>Click Here</a></td>"
                                            + "</tr>");
                                        }
                                        while(myres.next());
                                        out.print("</table>");
                                    }
                                    else
                                    {
                                        out.print("<center><h3><div class='alert alert-danger'>No Result Found '"+product+"'</div></h3></center>");
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
            
        </div>
        <div class="col-md-6">
            <center><h2>Prescription</h2></center><br>
            <%
            String product1=request.getParameter("product");
                            try
                            {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                                try
                                {
                                    String a="select * from addmedicineprecription where name like ?";
                                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                                    mystatement.setString(1, "%" +product1+ "%");
                                    ResultSet myres=mystatement.executeQuery();
                                    if(myres.next())
                                    {
                                        out.print("<table  id='customers'>"
                                        + "<tr>"        
                                        + "<th>Name</th>"
                                        + "<th>Drug Type</th>"
                                        + "<th>Cost</th>"
                                        + "<th>Details</th>"
                                        + "</tr>");
                                        do
                                        {
                                            out.print("<tr>"
                                            + "<td>"+myres.getString("name")+"</td>"
                                            + "<td>"+myres.getString("drugtype")+"</td>"
                                            + "<td>"+myres.getString("price")+"</td>"   
                                            + "<td><a href='showmedidetail.jsp?bno="+myres.getString("bno")+"&dtype="+myres.getString("drugtype")+"'>Click Here</a></td>"
                                            + "</tr>");
                                        }
                                        while(myres.next());
                                        out.print("</table>");
                                    }
                                    else
                                    {
                                        out.print("<center><h3><div class='alert alert-danger'>No Result Found '"+product1+"'</div></h3></center>");
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
        </div>    
        </div>
        <%@include file="footer.jsp"%>
    </body>
</html>
