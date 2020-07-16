<%-- 
    Document   : deliv
    Created on : 30 Mar, 2018, 10:06:45 AM
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
                                                        String a="insert into delivery(tprice,name,email,address,city,state,zip,cardname,accno,exp,cvv) values(?,?,?,?,?,?,?,?,?,?,?)";
                                                        PreparedStatement mystatement=myconnection.prepareStatement(a);
                                                        mystatement.setString(1, request.getParameter("trate"));
                                                        mystatement.setString(2, request.getParameter("name"));
                                                        mystatement.setString(3, request.getParameter("email"));
                                                        mystatement.setString(4, request.getParameter("address"));
                                                        mystatement.setString(5, request.getParameter("city"));
                                                        mystatement.setString(6, request.getParameter("state"));
                                                        mystatement.setString(7, request.getParameter("zip"));
                                                        mystatement.setString(8, request.getParameter("ncard"));
                                                        mystatement.setString(9, request.getParameter("accno"));
                                                        mystatement.setString(10, request.getParameter("exp"));
                                                        
                                                        mystatement.setString(11, request.getParameter("cvv"));


                                                        if(mystatement.executeUpdate()>0)
                                                        {
                                                            
                                                            String b="delete from cart where email=?";
                                                            PreparedStatement myst=myconnection.prepareStatement(b);
                                                            myst.setString(1, session.getAttribute("username").toString());
                                                            myst.executeUpdate();
                                                             
                                                            
                                                        }   
                                                        else
                                                        {
                                                            out.print("fail");
                                                        }
                                                    }
                                                    catch(Exception e)
                                                    {
                                                        out.print(e.getMessage());
                                                    }
                                                }
                                                catch(Exception e)
                                                {
                                                    out.print(e.getMessage());
                                                }
                                                   
                                                  
                                            
                                        %> 