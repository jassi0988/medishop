<%

    if(session.getAttribute("adminname")!=null ||session.getAttribute("type")!=null)
      {
          session.invalidate();
          response.sendRedirect("index.jsp");
      }  
%>