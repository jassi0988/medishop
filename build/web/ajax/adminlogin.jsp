<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.sql.*"%>

 <%
                                            if(request.getParameter("uname").equals("") || (request.getParameter("pass").equals("")))
                                            {
                                               out.print("2");
                                            }
                                            
                                            else if(request.getParameter("uname")!=null)
                                            {
                                            try
                                            {

                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                                                try
                                                {
                                                    String a="select * from adminlogin where username=? and password=?";
                                                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                                                    mystatement.setString(1, request.getParameter("uname"));
                                                    mystatement.setString(2, request.getParameter("pass"));
                                                    ResultSet myres=mystatement.executeQuery();
                                                    if(myres.next())
                                                    {
                                                        out.print("1");                                                   
                                                        session.setAttribute("type", myres.getString("type"));
                                                        session.setAttribute("adminname", myres.getString("username"));
                                                    }
                                                    else
                                                    {
                                                        out.print("0");
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


                                                <%--Add company--%>
                                                
                                                

                                                
                                                
                                                
    