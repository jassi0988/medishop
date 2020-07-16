<%-- 
    Document   : stock
    Created on : 15 Mar, 2018, 10:31:14 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
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
   
        </style>
        <script src="jquery-3.2.1.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
            $(".delete").click(function(e){
            e.preventDefault();
            var c=confirm("Are You Want To Delete Medicine")
            if(c==true)
            {
                var a=$(this).attr("id");
                var tabledata=$(this).parent();
                var row=$(this).parent().parent();
                $.ajax({
                url:'delete/deletestock.jsp',
                type:'post',
                data:{n:a},

                success:function(x) 
                {
                    if(x.trim()=="success")
                    { 
                        row.css({'backgroundColor':'#fb6c6c'});
                        // alert("Working")
                        row.fadeOut(1000,function()
                        {
                        row.remove()
                        })
                    }
                else
                {
                    tabledata.append("Error aa gya"); 
                }
                },
                error: function(e) 
                {
                tabledata.append("Error" + e); 
                }
                }); 
            }
            else
            {
                
            }
            }); 
            });
        </script>
        
    </head>
    <body>
        <%
            if(session.getAttribute("type").toString().equals("admin"))             
            {
        %>      
                <%@include file="adminheader.jsp" %>
        <%       
            }
        %>
        
        <div class="container-fluid">
        <h1 id="cen">Stock</h1><br><br>
        
        <%
                            try
                            {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                                try
                                {
                                    String a="select * from stock";
                                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                                    ResultSet myres=mystatement.executeQuery();
                                    if(myres.next())
                                    {
                                        out.print("<table  id='customers'>"
                                        + "<tr>"        
                                        + "<th>Batch No</th>"
                                        + "<th>Name</th>"
                                        + "<th>Quantity</th>"
                                        + "<th>Price</th>"
                                        + "<th>Company</th>"
                                        + "<th>Update</th>"
                                        + "<th>Delete</th>"        
                                        + "</tr>");
                                        do
                                        {
                                            out.print("<tr>"
                                            + "<td>"+myres.getString("bno")+"</td>"
                                            + "<td>"+myres.getString("name")+"</td>"
                                            + "<td>"+myres.getString("qty")+"</td>"
                                            + "<td>"+myres.getString("price")+"</td>"
                                            + "<td>"+myres.getString("company")+"</td>"   
                                            + "<td><a href='updatemedi.jsp?bno="+myres.getString("bno")+"'>Update</a></td>"   
                                            + "<td><a class='delete' href='#' id="+ myres.getString("bno")+">Delete</a></td>"            
                                            + "</tr>");
                                        }
                                        while(myres.next());
                                        out.print("</table>");
                                    }
                                    else
                                    {
                                    out.print("<center><h3><div class='alert alert-danger'>No Stock Available</div></h3></center>");
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
        <%@include file="footer.jsp"%>
    </body>
</html>
