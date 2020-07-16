package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class coustmerprofile_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <style>\n");
      out.write("            input.hidden {\n");
      out.write("            position: absolute;\n");
      out.write("            left: -9999px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        #profile-image1 {\n");
      out.write("        cursor: pointer;\n");
      out.write("\n");
      out.write("         width: 100px;\n");
      out.write("        height: 100px;\n");
      out.write("\tborder:2px solid #03b1ce ;}\n");
      out.write("\t.tital{ font-size:16px; font-weight:500;}\n");
      out.write("\t .bot-border{ border-bottom:1px #f8f8f8 solid;  margin:5px 0  5px 0}\n");
      out.write("        </style>    \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("\t<div class=\"row\">\n");
      out.write("\t\t<h2>Create your snippet's HTML, CSS and Javascript in the editor tabs</h2>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("                    <div class=\"col-md-7 \">\n");
      out.write("\n");
      out.write("             <div class=\"panel panel-default\">\n");
      out.write("               <div class=\"panel-heading\">  <h4 >User Profile</h4></div>\n");
      out.write("                <div class=\"panel-body\">\n");
      out.write("\n");
      out.write("                 <div class=\"box box-info\">\n");
      out.write("\n");
      out.write("                         <div class=\"box-body\">\n");
      out.write("                                  <div class=\"col-sm-6\">\n");
      out.write("                                  <div  align=\"center\"> <img alt=\"User Pic\" src=\"https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg\" id=\"profile-image1\" class=\"img-circle img-responsive\"> \n");
      out.write("\n");
      out.write("                             <input id=\"profile-image-upload\" class=\"hidden\" type=\"file\">\n");
      out.write("             <div style=\"color:#999;\" >click here to change profile image</div>\n");
      out.write("                             <!--Upload Image Js And Css-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                  </div>\n");
      out.write("\n");
      out.write("                           <br>\n");
      out.write("\n");
      out.write("                           <!-- /input-group -->\n");
      out.write("                         </div>\n");
      out.write("                         <div class=\"col-sm-6\">\n");
      out.write("                         <h4 style=\"color:#00b1b1;\">Prasad Shankar Huddedar </h4></span>\n");
      out.write("                           <span><p>Aspirant</p></span>            \n");
      out.write("                         </div>\n");
      out.write("                         <div class=\"clearfix\"></div>\n");
      out.write("                         <hr style=\"margin:5px 0 5px 0;\">\n");
      out.write("\n");
      out.write("\n");
      out.write("             <div class=\"col-sm-5 col-xs-6 tital \" >First Name:</div><div class=\"col-sm-7 col-xs-6 \">Prasad</div>\n");
      out.write("                  <div class=\"clearfix\"></div>\n");
      out.write("             <div class=\"bot-border\"></div>\n");
      out.write("\n");
      out.write("             <div class=\"col-sm-5 col-xs-6 tital \" >Middle Name:</div><div class=\"col-sm-7\"> Shankar</div>\n");
      out.write("               <div class=\"clearfix\"></div>\n");
      out.write("             <div class=\"bot-border\"></div>\n");
      out.write("\n");
      out.write("             <div class=\"col-sm-5 col-xs-6 tital \" >Last Name:</div><div class=\"col-sm-7\"> Huddedar</div>\n");
      out.write("               <div class=\"clearfix\"></div>\n");
      out.write("             <div class=\"bot-border\"></div>\n");
      out.write("\n");
      out.write("             <div class=\"col-sm-5 col-xs-6 tital \" >Date Of Joining:</div><div class=\"col-sm-7\">15 Jun 2016</div>\n");
      out.write("\n");
      out.write("               <div class=\"clearfix\"></div>\n");
      out.write("             <div class=\"bot-border\"></div>\n");
      out.write("\n");
      out.write("             <div class=\"col-sm-5 col-xs-6 tital \" >Date Of Birth:</div><div class=\"col-sm-7\">11 Jun 1998</div>\n");
      out.write("\n");
      out.write("               <div class=\"clearfix\"></div>\n");
      out.write("             <div class=\"bot-border\"></div>\n");
      out.write("\n");
      out.write("             <div class=\"col-sm-5 col-xs-6 tital \" >Place Of Birth:</div><div class=\"col-sm-7\">Shirdi</div>\n");
      out.write("\n");
      out.write("              <div class=\"clearfix\"></div>\n");
      out.write("             <div class=\"bot-border\"></div>\n");
      out.write("\n");
      out.write("             <div class=\"col-sm-5 col-xs-6 tital \" >Nationality:</div><div class=\"col-sm-7\">Indian</div>\n");
      out.write("\n");
      out.write("              <div class=\"clearfix\"></div>\n");
      out.write("             <div class=\"bot-border\"></div>\n");
      out.write("\n");
      out.write("             <div class=\"col-sm-5 col-xs-6 tital \" >Relition:</div><div class=\"col-sm-7\">Hindu</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                         <!-- /.box-body -->\n");
      out.write("                       </div>\n");
      out.write("                       <!-- /.box -->\n");
      out.write("\n");
      out.write("                     </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                 </div> \n");
      out.write("                 </div>\n");
      out.write("             </div>  \n");
      out.write("                 <script>\n");
      out.write("                           $(function() {\n");
      out.write("                 $('#profile-image1').on('click', function() {\n");
      out.write("                     $('#profile-image-upload').click();\n");
      out.write("                 });\n");
      out.write("             });       \n");
      out.write("                           </script> \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("             </div>\n");
      out.write("\n");
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
