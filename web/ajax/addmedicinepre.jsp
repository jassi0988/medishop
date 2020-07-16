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
    Thread.sleep(2000);
  {
        
        String bno=" ",name=" ",ptype=" ",com=" ",choosetype=" ",price=" ",expdate=" ",mfddate=" ", imagename=" ",path=" ";
        boolean successful=true;
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        
        if(isMultipart)
        {
            FileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            List<FileItem> items = null;
            try
            {
                items = upload.parseRequest(request);
            }
            catch (FileUploadException e)
            {
                e.printStackTrace();
            }

            for(FileItem myitem:items)
            {
                if (myitem.isFormField())
                {
                    String itemName1 = myitem.getFieldName();
                    String value=myitem.getString();

                    if(itemName1.equals("bno")) 
                    {
                         bno=value;
                    }
                    else if(itemName1.equals("name"))
                    {
                         name=value;
                    }
                    else if(itemName1.equals("ptype"))
                    {
                         ptype=value;
                    }
                    else if(itemName1.equals("com"))
                    {
                         com=value;
                    }
                    else if(itemName1.equals("type"))
                    {
                         choosetype=value;
                    }
                    else if(itemName1.equals("price"))
                    {
                         price=value;
                    }
                    else if(itemName1.equals("expdate"))
                    {
                         expdate=value;
                    }
                    else if(itemName1.equals("mfddate"))
                    {
                         mfddate=value;
                    }
                  
                }
                else
                {
                    String type=myitem.getContentType();
                    long size=myitem.getSize()/1024; //kbytes

                    if(size==0)
                    {
                        imagename="default.png";
                    }
                    else if((type.equals("image/pjpeg") || type.equals("image/jpeg")
                             || type.equals("image/png") || type.equals("image/x-png")
                             || type.equals("image/gif")) && size<400)
                    {
                        imagename=new java.util.Date().getTime()+myitem.getName();
                        path=config.getServletContext().getRealPath("/") + "userimages\\" + imagename;
                        File savefile=new File(path);
                        myitem.write(savefile);    
                    }
                    else
                    {
                        successful=false;
                        out.println("Sorry only pictures of less than 400kb are allowed to upload");
                    }
                }
            } 

            if(successful==true)
            {
                
                       try
                        {
                            String n="";
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                            try
                            {
                                String a="select * from addmedicineprecription where name=? and bno=?";
                                PreparedStatement mystatement=myconnection.prepareStatement(a);
                                mystatement.setString(1, name);
                                mystatement.setString(2, bno);
                                ResultSet res=mystatement.executeQuery();
                                if(res.next())
                                {
                                    out.print("<center><h3><div class='alert alert-danger'><strong>Error!</strong>Medicine Is Already Exist</div></h3></center>");
                                }
                                else
                                {
                                    
                                        String b="insert into addmedicineprecription values(?,?,?,?,?,?,?,?,?)";
                                        PreparedStatement myst=myconnection.prepareStatement(b);
                                        myst.setString(1, bno);
                                        myst.setString(2, name);
                                        myst.setString(3, ptype);
                                        myst.setString(4, com);
                                        myst.setString(5, choosetype);
                                        myst.setString(6, price);
                                        myst.setString(7, expdate);
                                        myst.setString(8, mfddate);
                                        myst.setString(9, imagename);
                                        
                                        if(myst.executeUpdate()>0)
                                        {
                                            out.print("<center><h3><div class='alert alert-success'><strong>Sucess!</strong>Medicine Added Sucessfully</div></h3></center>");
                                        }   
                                        else
                                        {
                                            out.print("error");
                                        }
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
            
        }
  
  }
%>

