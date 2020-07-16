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
                                           Thread.sleep(5000);
                                            if(request.getParameter("lno").equals("") && (request.getParameter("cname").equals("")))
                                            {
                                               out.print("<center><h3><div class='alert alert-danger'><strong>Error!</strong>Please Enter All Fields</div></h3></center>");
                                            }
                                            else if(request.getParameter("cname")!=null)
                                            {
                                            try
                                            {

                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                                                try
                                                {
                                                    String a="insert into addcompany values(?,?,?,?,?,?,?,?,?)";
                                                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                                                    mystatement.setString(1, request.getParameter("lno"));
                                                    mystatement.setString(2, request.getParameter("cname"));
                                                    mystatement.setString(3, request.getParameter("oname"));
                                                    mystatement.setString(4, request.getParameter("mname"));
                                                    mystatement.setString(5, request.getParameter("email"));
                                                    mystatement.setString(6, request.getParameter("cno"));
                                                    mystatement.setString(7, request.getParameter("address"));
                                                    mystatement.setString(8, request.getParameter("ptype"));
                                                    mystatement.setString(9, request.getParameter("ctype"));
                                                    if(mystatement.executeUpdate()>0)
                                                    {
                                                        out.print("<center><h3><div class='alert alert-success'><strong>Sucess!</strong>Company Added Sucessfully</div></h3></center>");
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
