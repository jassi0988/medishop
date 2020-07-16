<%-- 
    Document   : updatecart
    Created on : 27 Mar, 2018, 10:43:30 AM
    Author     : Dell
--%>
<%@page import="java.sql.*"%>
<%
if(request.getParameter("n")!=null)
    {
                    try
                                            {

                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                                                try
                                                {
                                                    String a="update cart set qty=?,tprice=? where bno=? and email=?";
                                                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                                                    
                                                    mystatement.setString(1, request.getParameter("qty"));
                                                    mystatement.setString(2, request.getParameter("price"));
                                                    
                                                    mystatement.setString(3, request.getParameter("n"));
                                                    
                                                    if(session.getAttribute("username")!=null)
                                                    {
                                                        mystatement.setString(4, session.getAttribute("username").toString());
                                                    }
                                                    else
                                                    {
                                                        mystatement.setString(4, session.getId());
                                                    }
                                                    if(mystatement.executeUpdate()>0)
                                                    {
                                                        response.sendRedirect("cart.jsp");
                                                    }
                                                }
                                                catch(Exception e)
                                                {
                                                out.print("Error in Query "+e.getMessage());
                                                }
                                            }
                                            catch(Exception e)
                                            {
                                            out.println("Error in Connection " + e.getMessage());
                                            }
                                           }
                                            


%>