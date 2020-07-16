<%@page import="java.sql.*"%>
<%
    if(request.getParameter("mtype").equals("presciption"))
    {
%>
        
                    <select id="ptype" name="ptype">
                        <option value="">Choose Disease Or Drug Category</option>
                        
                        
                        <%
                            try
                            {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                                try
                                {
                                    String a="select * from diseasecat";
                                    PreparedStatement mystatement=myconnection.prepareStatement(a);

                                    ResultSet myres=mystatement.executeQuery();
                                    if(myres.next())
                                    {
                                        do
                                        {
                                         out.print("<option value="+myres.getString("name")+">"+myres.getString("name")+"</option>");
                                        }while(myres.next());
                                    }
                                    else
                                    {
                                    out.print("<option>No Diseases Added</option>");
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
                            
                     </select>
<%
    }    
    else if(request.getParameter("mtype").equals("non-presciption"))
    {
%>
                    <select id="nptype" name="nptype">
                        <option value="">Choose Category</option>
                        <option value="Personal Care">Personal Care</option>
                        <option value="Beauty">Beauty</option>
                        <option value="Baby And Mother">Baby And Mother</option>
                        <option value="Health Care">Health Care</option>
                        <option value="Wellness">Wellness</option>
                        <option value="Patanjali">Patanjali</option>
                    </select>
                            
<%
    }
%>