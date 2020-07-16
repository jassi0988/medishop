<%-- 
    Document   : addtocartnon
    Created on : 27 Mar, 2018, 3:07:32 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>

<%
    String bno="",name="",price="",image="";
    if(request.getParameter("n")!=null)
    {
    
    try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                try
                {
                    String a="select * from addmedicinenonprecription where bno=?";
                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                    mystatement.setString(1, request.getParameter("n"));
                    ResultSet myres=mystatement.executeQuery();
                    if(myres.next())
                    {
                        bno=myres.getString("bno");
                        name=myres.getString("name");
                        price=myres.getString("price");
                        image=myres.getString("image");
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
    }
%>


<%
    if(request.getParameter("n")!=null)
    {
        try
                        {
                            String n="";
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                            try
                            {
                                        String b="insert into cart(bno,email,mediname,qty,price,image,tprice,preimage) values(?,?,?,?,?,?,?,?)";
                                        PreparedStatement myst=myconnection.prepareStatement(b);
                                        myst.setString(1, bno);
                                        if(session.getAttribute("username")!=null)
                                        {
                                            myst.setString(2, session.getAttribute("username").toString());
                                        }
                                        else
                                        {
                                            myst.setString(2, session.getId());
                                        }
                                        myst.setString(3, name);
                                        myst.setString(4, "1");
                                        myst.setString(5, price);
                                        myst.setString(6, image);
                                        myst.setString(7, price);
                                        myst.setString(8, "no");
                                        if(myst.executeUpdate()>0)
                                        {
                                            out.print("<center><h3><div class='alert alert-success'><strong>Sucess!</strong></div></h3></center>");
                                        }   
                                        else
                                        {
                                            out.print("error");
                                        }
                                
                                
                            }
                            catch(Exception e)
                            {
                                out.print("ha "+e.getMessage());
                            }

                        }
                        catch(Exception e)
                        {
                        out.println("Error in Connection " + e.getMessage());
                        }
            
            }
            
%>