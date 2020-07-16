<%-- 
    Document   : deletecoustmer
    Created on : 30 Mar, 2018, 6:58:36 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<%
                            try
                            {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                                try
                                {
                                    String a="delete from coustmerlogin where id=?";
                                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                                    mystatement.setString(1, request.getParameter("n"));
                                    if(mystatement.executeUpdate()>0)
                                    {
                                     out.print("success");
                                    } 
                                    else
                                    {
                                     out.print("error");
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


