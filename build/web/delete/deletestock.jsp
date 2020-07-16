<%-- 
    Document   : deletemedi
    Created on : 16 Mar, 2018, 10:10:11 AM
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
                                    String a="delete from stock where bno=?";
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

