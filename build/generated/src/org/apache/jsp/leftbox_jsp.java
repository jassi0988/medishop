package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class leftbox_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("         <!-- banner -->\n");
      out.write("\t<div class=\"banner\">\n");
      out.write("\t\t<div class=\"w3l_banner_nav_left\">\n");
      out.write("\t\t\t<nav class=\"navbar nav_bottom\">\n");
      out.write("\t\t\t <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("\t\t\t  <div class=\"navbar-header nav_2\">\n");
      out.write("\t\t\t\t  <button type=\"button\" class=\"navbar-toggle collapsed navbar-toggle1\" data-toggle=\"collapse\" data-target=\"#bs-megadropdown-tabs\">\n");
      out.write("\t\t\t\t\t<span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t  </button>\n");
      out.write("\t\t\t   </div> \n");
      out.write("\t\t\t   <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("\t\t\t\t<div class=\"collapse navbar-collapse\" id=\"bs-megadropdown-tabs\">\n");
      out.write("\t\t\t\t\t<ul class=\"nav navbar-nav nav_1\">\n");
      out.write("\t\t\t\t\t\t<li><a href=\"products.html\">Skin Care</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"household.html\">Hair Care</a></li>\n");
      out.write("\t\t\t\t\t\t<li class=\"dropdown mega-dropdown active\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Veggies & Fruits<span class=\"caret\"></span></a>\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t<div class=\"dropdown-menu mega-dropdown-menu w3ls_vegetables_menu\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"w3ls_vegetables\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<ul>\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"vegetables.html\">Vegetables</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"vegetables.html\">Fruits</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t</div>                  \n");
      out.write("\t\t\t\t\t\t\t</div>\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"kitchen.html\">Oral Care</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"short-codes.html\">Eye Care</a></li>\n");
      out.write("\t\t\t\t\t\t<li class=\"dropdown\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Beverages<span class=\"caret\"></span></a>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"dropdown-menu mega-dropdown-menu w3ls_vegetables_menu\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"w3ls_vegetables\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"drinks.html\">Soft Drinks</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"drinks.html\">Juices</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t</div>                  \n");
      out.write("\t\t\t\t\t\t\t</div>\t\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"pet.html\">Pet Food</a></li>\n");
      out.write("\t\t\t\t\t\t<li class=\"dropdown\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Frozen Foods<span class=\"caret\"></span></a>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"dropdown-menu mega-dropdown-menu w3ls_vegetables_menu\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"w3ls_vegetables\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"frozen.html\">Frozen Snacks</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"frozen.html\">Frozen Nonveg</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t</div>                  \n");
      out.write("\t\t\t\t\t\t\t</div>\t\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"bread.html\">Bread & Bakery</a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t </div><!-- /.navbar-collapse -->\n");
      out.write("\t\t\t</nav>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"w3l_banner_nav_right\">\n");
      out.write("\t\t\t<section class=\"slider\">\n");
      out.write("\t\t\t\t<div class=\"flexslider\">\n");
      out.write("\t\t\t\t\t<ul class=\"slides\">\n");
      out.write("\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"w3l_banner_nav_right_banner\">\n");
      out.write("\t\t\t\t\t\t\t\t<h3>Make your <span>food</span> with Spicy.</h3>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"more\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"products.html\" class=\"button--saqui button--round-l button--text-thick\" data-text=\"Shop now\">Shop now</a>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"w3l_banner_nav_right_banner1\">\n");
      out.write("\t\t\t\t\t\t\t\t<h3>Make your <span>food</span> with Spicy.</h3>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"more\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"products.html\" class=\"button--saqui button--round-l button--text-thick\" data-text=\"Shop now\">Shop now</a>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"w3l_banner_nav_right_banner2\">\n");
      out.write("\t\t\t\t\t\t\t\t<h3>upto <i>50%</i> off.</h3>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"more\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"products.html\" class=\"button--saqui button--round-l button--text-thick\" data-text=\"Shop now\">Shop now</a>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</section>\n");
      out.write("\t\t\t<!-- flexSlider -->\n");
      out.write("\t\t\t\t<link rel=\"stylesheet\" href=\"css/flexslider.css\" type=\"text/css\" media=\"screen\" property=\"\" />\n");
      out.write("\t\t\t\t<script defer src=\"js/jquery.flexslider.js\"></script>\n");
      out.write("\t\t\t\t<script type=\"text/javascript\">\n");
      out.write("\t\t\t\t$(window).load(function(){\n");
      out.write("\t\t\t\t  $('.flexslider').flexslider({\n");
      out.write("\t\t\t\t\tanimation: \"slide\",\n");
      out.write("\t\t\t\t\tstart: function(slider){\n");
      out.write("\t\t\t\t\t  $('body').removeClass('loading');\n");
      out.write("\t\t\t\t\t}\n");
      out.write("\t\t\t\t  });\n");
      out.write("\t\t\t\t});\n");
      out.write("\t\t\t  </script>\n");
      out.write("\t\t\t<!-- //flexSlider -->\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t</div>\n");
      out.write("<!-- banner -->");
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
