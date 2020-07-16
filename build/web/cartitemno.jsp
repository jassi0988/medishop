<%-- 
    Document   : cartitemno
    Created on : 27 Mar, 2018, 4:51:58 PM
    Author     : Dell
--%>
<%@page import="java.sql.*"%>
<%
         
        int count=0;
                            try
                            {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                                try
                                {
                                    String a="select * from cart where email=?";
                                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                                    if(session.getAttribute("username")!=null)
                                    {
                                        mystatement.setString(1, session.getAttribute("username").toString());
                                    }
                                    else
                                    {
                                        mystatement.setString(1, session.getId());
                                    }
                                    ResultSet myres=mystatement.executeQuery();
                                    if(myres.next())
                                    {                                        
                                        do
                                        { 
                                            count++;
                                        }while(myres.next());
                                    }
                                    

                                }
                                catch(Exception e)
                                {
                                out.print("as"+e.getMessage());
                                }

                            }
                            catch(Exception e)
                            {
                            out.println("Error in Connection " + e.getMessage());
                            }
     %>