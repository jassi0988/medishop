<%@page import="java.sql.*"%>
<%
    Thread.sleep(5000);
    if(request.getParameter("bno").equals("") || (request.getParameter("name").equals("")) || (request.getParameter("qty").equals("")) || (request.getParameter("price").equals("")) || (request.getParameter("com").equals("")) || (request.getParameter("sname").equals("")) || (request.getParameter("stype").equals("")) || (request.getParameter("address").equals("")) || (request.getParameter("email").equals("")))
    {
        out.print("<center><h3><div class='alert alert-danger'><strong>Error!</strong>Please Enter All Fields</div></h3></center>");
    }
    else
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
            try
            {
                String a="insert into stock values(?,?,?,?,?,?,?,?,?)";
                PreparedStatement mystatement=myconnection.prepareStatement(a);
                mystatement.setString(1, request.getParameter("bno"));
                mystatement.setString(2, request.getParameter("name"));
                mystatement.setString(3, request.getParameter("qty"));
                mystatement.setString(4, request.getParameter("price"));
                mystatement.setString(5, request.getParameter("com"));
                mystatement.setString(6, request.getParameter("sname"));
                mystatement.setString(7, request.getParameter("stype"));
                mystatement.setString(8, request.getParameter("address"));
                mystatement.setString(9, request.getParameter("email"));
                if(mystatement.executeUpdate()>0)
                {
                    out.print("<center><h3><div class='alert alert-success'><strong>Sucess!</strong>Medicine Added To Stock Sucessfully</div></h3></center>");
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
