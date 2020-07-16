package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class newjsp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <script src=\"jquery-3.2.1.min.js\"></script>\n");
      out.write("            <script>\n");
      out.write("                $(document).ready(function(){\n");
      out.write("\n");
      out.write("                $(\"#s1\").click(function(e){\n");
      out.write("                e.preventDefault();\n");
      out.write("                var a=$(\"#uname\").val();\n");
      out.write("                var b=$(\"#pass\").val();\n");
      out.write("                $.ajax({\n");
      out.write("                url:\"ajax/adminlogin.jsp\",\n");
      out.write("                data:{\"uname\":a,\"pass\":b},\n");
      out.write("                type:\"post\",\n");
      out.write("                \n");
      out.write("                success:function(result)\n");
      out.write("                {    \n");
      out.write("                    if(result==2)\n");
      out.write("                    {\n");
      out.write("                      $(\"#msg\").html(\"<center>Please Enter Fields</center>\")\n");
      out.write("                    }\n");
      out.write("                    if(result==1)\n");
      out.write("                    {\n");
      out.write("                      window.location.href= \"adminindex.jsp\";\n");
      out.write("                    }\n");
      out.write("                    if(result==0)\n");
      out.write("                    {\n");
      out.write("                        $(\"#msg\").html(\"<center>Username And Password Is Invalid</center>\")\n");
      out.write("                    }\n");
      out.write("                },\n");
      out.write("                error:function()\n");
      out.write("                {\n");
      out.write("                    $(\"#msg\").html(\"error in ajax\")\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                });\n");
      out.write("\n");
      out.write("                });\n");
      out.write("\n");
      out.write("                });\n");
      out.write("\n");
      out.write("            </script>  \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Hello World!</h1>\n");
      out.write("        <form>\n");
      out.write("            \n");
      out.write("            <div class=\"form\">\n");
      out.write("\t\t\t\t\t<h2>Login to Admin Account</h2>\n");
      out.write("\t\t\t\t\t<form action=\"#\" method=\"post\">\n");
      out.write("\t\t\t\t\t  <input type=\"text\" name=\"Username\" placeholder=\"Username\" id=\"uname\">\n");
      out.write("\t\t\t\t\t  <input type=\"password\" name=\"Password\" placeholder=\"Password\" id=\"pass\">\n");
      out.write("\t\t\t\t\t  <input type=\"submit\" value=\"Login\" name=\"submit\" id=\"s1\">\n");
      out.write("                                          <br><br>\n");
      out.write("                                          <div id=\"msg\"></div>\n");
      out.write("\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t  </div>\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
