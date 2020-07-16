<%-- 
    Document   : feedback
    Created on : 2 Apr, 2018, 3:04:02 PM
    Author     : Dell
--%>
<%@page import="java.sql.*"%>
<%

   

                                           Thread.sleep(2000);
                                            if(request.getParameter("name").equals("") || (request.getParameter("phone").equals("")) || (request.getParameter("email").equals("")) || (request.getParameter("subject").equals("")) || (request.getParameter("feedback").equals("")))
                                            {
                                               out.print("<center><div class='alert alert-danger'><strong>Error!</strong>Please Enter All Fields</div></center>");
                                            }
                                            else
                                            {
                                            try
                                            {

                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                                                try
                                                {
                                                    String a="insert into feedback(name,phone,email,subject,feedback) values(?,?,?,?,?)";
                                                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                                                    mystatement.setString(1, request.getParameter("name"));
                                                    mystatement.setString(2, request.getParameter("phone"));
                                                    mystatement.setString(3, request.getParameter("email"));
                                                    mystatement.setString(4, request.getParameter("subject"));
                                                    mystatement.setString(5, request.getParameter("feedback"));
                                                    if(mystatement.executeUpdate()>0)
                                                    {
                                                        out.print("<center><div class='alert alert-success'><strong>Sucess!</strong>Feddback Send Sucessfully</div></center>");
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
