package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class userheader_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/newheadercss.jsp");
    _jspx_dependants.add("/comboboxcss.jsp");
  }

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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!-- header -->\n");
      out.write("<head>\n");
      out.write("    ");
      out.write("<style>\n");
      out.write("    #h{\n");
      out.write("                color: #fff;\n");
      out.write("                text-transform: uppercase;\n");
      out.write("                font-size: 17px;\n");
      out.write("                font-weight: bold;\n");
      out.write("                letter-spacing: 1px;\n");
      out.write("                text-align: center;\n");
      out.write("        }\n");
      out.write("        #he{\n");
      out.write("                text-align: center;\n");
      out.write("                margin-left: 2em;\n");
      out.write("                color: #fff;\n");
      out.write("                text-transform: uppercase;\n");
      out.write("                font-size: 17px;\n");
      out.write("                font-weight: bold;\n");
      out.write("                letter-spacing: 1px;\n");
      out.write("        }\n");
      out.write("       \n");
      out.write("        .head{\n");
      out.write("            background-color: #19a9b4;                 \n");
      out.write("            }\n");
      out.write("            .agileits_header{\n");
      out.write("                background: #fff;\n");
      out.write("            }\n");
      out.write("            .logo_products{\n");
      out.write("                padding: 4.2em 0 1em;\n");
      out.write("                padding-bottom: 7px;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            .w3l_offers{\n");
      out.write("                margin-left: 50px;\n");
      out.write("                margin-bottom: 5px;\n");
      out.write("            }\n");
      out.write("            .w3ls_logo_products_left1{\n");
      out.write("                margin-top: 2.7em;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .w3l_search{\n");
      out.write("                float: right;\n");
      out.write("            }\n");
      out.write("            .w3l_search li{\n");
      out.write("                display: inline-block;\n");
      out.write("                padding-right: 10px;\n");
      out.write("            }\n");
      out.write("            .w3l_search font{\n");
      out.write("                color: #000;                    \n");
      out.write("            }\n");
      out.write("            #no{\n");
      out.write("                margin-top: 16px;\n");
      out.write("                margin-right: -70px;\n");
      out.write("            }\n");
      out.write("            .nowrap{\n");
      out.write("                white-space: nowrap;\n");
      out.write("            }\n");
      out.write("            .fa-shopping-cart{\n");
      out.write("                font-size: 30px;\n");
      out.write("                margin-top: 20px;\n");
      out.write("            }\n");
      out.write("            .fa-map-marker{\n");
      out.write("                font-size: 30px;\n");
      out.write("                margin-left: 1em;\n");
      out.write("            }\n");
      out.write("           \n");
      out.write("</style>    ");
      out.write("\n");
      out.write("    ");
      out.write("<style>\n");
      out.write(".mydropbtn {\n");
      out.write("            \n");
      out.write("            color: white;\n");
      out.write("            \n");
      out.write("            font-size: 20px;\n");
      out.write("            text-transform: uppercase;\n");
      out.write("            color: #ffffff;\n");
      out.write("            \n");
      out.write("            border: none;\n");
      out.write("            cursor: pointer;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .mydropdown {\n");
      out.write("            position: relative;\n");
      out.write("            display: inline-block;\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .mydropdown-content {\n");
      out.write("            display: none;\n");
      out.write("            position: absolute;\n");
      out.write("            background-color: #f9f9f9;\n");
      out.write("            min-width: 160px;\n");
      out.write("            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);\n");
      out.write("            z-index: 1;\n");
      out.write("            right: 0;\n");
      out.write("            min-width: 150px;\n");
      out.write("            text-align: center;\n");
      out.write("            padding: 1em 0;\n");
      out.write("            margin: 0;\n");
      out.write("            left:auto;\n");
      out.write("            border: 1px solid #ccc;\n");
      out.write("            border: 1px solid rgba(0, 0, 0, .15);\n");
      out.write("            border-radius: 4px;\n");
      out.write("            -webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);\n");
      out.write("          box-shadow: 0 6px 12px rgba(0, 0, 0, .175);\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .mydropdown-content a {\n");
      out.write("            color: black;\n");
      out.write("            padding: 12px 16px;\n");
      out.write("            text-decoration: none;\n");
      out.write("            display: block;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .mydropdown-content a:hover {background-color: #f1f1f1}\n");
      out.write("\n");
      out.write("        .mydropdown:hover .mydropdown-content {\n");
      out.write("            display: block;\n");
      out.write("        }\n");
      out.write("</style>");
      out.write("\n");
      out.write("</head>   \n");
      out.write("<body link=\"black\"> \n");
      out.write("\t<div class=\"agileits_header\">\n");
      out.write("\t\t<div class=\"w3l_offers\">\n");
      out.write("\t\t\t<a href=\"\"><img src=\"images/flogo1.png\"></a>\n");
      out.write("\t\t</div>\n");
      out.write("                \n");
      out.write("\t\t<div class=\"w3l_search\">\n");
      out.write("                    \n");
      out.write("                    <li>Call:0181-2421510</li>\n");
      out.write("                    <li><a href=\"\"><font>Create An Account</font></a></li>\n");
      out.write("                    <li><a href=\"\"><font>Sign In</font></a></li>\n");
      out.write("                    <a href=\"\"><i class=\"fa fa-shopping-cart\"></i></a>\n");
      out.write("                    <a href=\"\"><i class=\"fa fa-map-marker\"></i>   Shop Location</a>\n");
      out.write("                </div> \n");
      out.write("            \n");
      out.write("                <div class=\"w3l_search\" id=\"no\">\n");
      out.write("                    \n");
      out.write("                    <form action=\"#\" method=\"post\">\n");
      out.write("                        \n");
      out.write("                        <input type=\"text\" name=\"Product\" value=\"Search a product...\">\n");
      out.write("                        <input type=\"submit\" value=\" \">\n");
      out.write("                        \n");
      out.write("                            \n");
      out.write("                    </form>\n");
      out.write("                \n");
      out.write("                </div> \n");
      out.write("\t\t\t\n");
      out.write("\t\t\n");
      out.write("\t\t\n");
      out.write("\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t</div>\n");
      out.write("<!-- script-for sticky-nav -->\n");
      out.write("\t<script>\n");
      out.write("\t$(document).ready(function() {\n");
      out.write("\t\t var navoffeset=$(\".agileits_header\").offset().top;\n");
      out.write("\t\t $(window).scroll(function(){\n");
      out.write("\t\t\tvar scrollpos=$(window).scrollTop(); \n");
      out.write("\t\t\tif(scrollpos >=navoffeset){\n");
      out.write("\t\t\t\t$(\".agileits_header\").addClass(\"fixed\");\n");
      out.write("\t\t\t}else{\n");
      out.write("\t\t\t\t$(\".agileits_header\").removeClass(\"fixed\");\n");
      out.write("\t\t\t}\n");
      out.write("\t\t });\n");
      out.write("\t\t \n");
      out.write("\t});\n");
      out.write("\t</script>\n");
      out.write("<!-- //script-for sticky-nav -->\n");
      out.write("<div class=\"head\">\n");
      out.write("\n");
      out.write("\t<div class=\"logo_products\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class=\"w3ls_logo_products_left1\">\n");
      out.write("\t\t\t\t<ul class=\"special_items\">\n");
      out.write("                                    <li><div class=\"mydropdown\">\n");
      out.write("                                            <p class=\"mydropbtn\" id=\"h\">Personal Care<i class=\"fa fa-caret-down\"></i></cenetr></p>\n");
      out.write("                                        <div class=\"mydropdown-content\">\n");
      out.write("                                        <a href=\"addmedicine.jsp\">Add Medicine</a>\n");
      out.write("                                        <a href=\"adddisease.jsp\">Add Disease</a>\n");
      out.write("                                        <a href=\"addcompany.jsp\">Add Company</a>\n");
      out.write("                                        <a href=\"viewmedi.jsp\">Medicines Details</a>\n");
      out.write("                                        </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li><a href=\"events.html\"><p id=\"he\">Events</p></a></li>\n");
      out.write("                                    <li><a href=\"about.html\"><p id=\"he\">About Us</p></a></li>\n");
      out.write("                                    <li><a href=\"products.html\"><p id=\"he\">Best Deals</p></a></li>\n");
      out.write("                                    <li><a href=\"services.html\"><p id=\"he\">Services</p></a></li>\n");
      out.write("                                    \n");
      out.write("                                    \n");
      out.write("                                    \n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("<br>\n");
      out.write("</body>\n");
      out.write("<!-- //header -->\n");
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
