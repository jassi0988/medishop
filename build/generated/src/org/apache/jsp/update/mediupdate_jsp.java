package org.apache.jsp.update;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class mediupdate_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/update/../headerfiles.jsp");
    _jspx_dependants.add("/update/../script.jsp");
    _jspx_dependants.add("/update/../footer.jsp");
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        ");
      out.write("\n");
      out.write("<!-- for-mobile-apps -->\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<meta name=\"keywords\" content=\"Grocery Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, \n");
      out.write("Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design\" />\n");
      out.write("<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false);\n");
      out.write("\t\tfunction hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("<!-- //for-mobile-apps -->\n");
      out.write("<link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<!-- font-awesome icons -->\n");
      out.write("<link href=\"css/font-awesome.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" /> \n");
      out.write("<!-- //font-awesome icons -->\n");
      out.write("<!-- js -->\n");
      out.write("<script src=\"js/jquery-1.11.1.min.js\"></script>\n");
      out.write("<!-- //js -->\n");
      out.write("<link href='//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>\n");
      out.write("<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>\n");
      out.write("<!-- start-smoth-scrolling -->\n");
      out.write("<script type=\"text/javascript\" src=\"js/move-top.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/easing.js\"></script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\tjQuery(document).ready(function($) {\n");
      out.write("\t\t$(\".scroll\").click(function(event){\t\t\n");
      out.write("\t\t\tevent.preventDefault();\n");
      out.write("\t\t\t$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);\n");
      out.write("\t\t});\n");
      out.write("\t});\n");
      out.write("</script>\n");
      out.write("<!-- start-smoth-scrolling -->");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            #ex{\n");
      out.write("                background-image: url(\"../images/doctor.png\");\n");
      out.write("                background-size: 200px 300px;\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-position: center right;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            #cen{\n");
      out.write("                text-align: center;\n");
      out.write("                color: #FBB448;\n");
      out.write("                padding-top: 1em;\n");
      out.write("            }    \n");
      out.write("            #ali{\n");
      out.write("                padding-top: 50px;\n");
      out.write("                padding-bottom: 20px;\n");
      out.write("            }\n");
      out.write("            #te{\n");
      out.write("                text-height: 10px;\n");
      out.write("            }\n");
      out.write("            #file{\n");
      out.write("                margin-top: 10px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"ex\">\n");
      out.write("        <div class=\"container\"> \n");
      out.write("        \n");
      out.write("            <h1 id=\"cen\">Add Medicine</h1>\n");
      out.write("            <form id=\"ali\" method=\"post\" enctype=\"multipart/form-data\" class=\"form1\">\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                <div class=\"col-md-6\">\n");
      out.write("                    <input type=\"text\" placeholder=\"Batch Number\" name=\"bno\" id=\"bno\"> \n");
      out.write("                    <input type=\"text\" placeholder=\"Medicine Name\" name=\"name\" id=\"name\"> \n");
      out.write("                    <select id=\"mtype\" name=\"mp\">\n");
      out.write("                        <option value=\"\">Add Medicine To</option>\n");
      out.write("                        <option value=\"presciption\">Presciption</option>\n");
      out.write("                        <option value=\"non-presciption\">Non-Presciption</option>\n");
      out.write("                        \n");
      out.write("                     </select>\n");
      out.write("                    <div id=\"msg\"></div>\n");
      out.write("                    <select id=\"com\" name=\"com\">\n");
      out.write("                        <option value=\"\">Choose Company</option>\n");
      out.write("                        ");

                            try
                            {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                                try
                                {
                                    String a="select * from addcompany";
                                    PreparedStatement mystatement=myconnection.prepareStatement(a);

                                    ResultSet myres=mystatement.executeQuery();
                                    if(myres.next())
                                    {
                                        do
                                        {
                                         out.print("<option value="+myres.getString("cname")+">"+myres.getString("cname")+"</option>");
                                        }while(myres.next());
                                    }
                                    else
                                    {
                                    out.print("<option>No Company Added</option>");
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



                            
      out.write("\n");
      out.write("                     <option value=\"Others\">Others</option>   \n");
      out.write("                     </select>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-6\">\n");
      out.write("                     <div id=\"msg1\"></div>\n");
      out.write("                    <input type=\"text\" placeholder=\"Price\" name=\"price\" id=\"price\">\n");
      out.write("                    <input type=\"text\" placeholder=\"MM/YY - Exp Date\" name=\"expdate\" id=\"expdate\">\n");
      out.write("                    <input type=\"text\" placeholder=\"MM/YY - Mfd Date\" name=\"mfddate\" id=\"mfddate\">\n");
      out.write("                    ");
      out.write("\n");
      out.write("                     \n");
      out.write("                    \n");
      out.write("                     <input type=\"file\"  name=\"file\" id=\"file\">\n");
      out.write("                  </div>\n");
      out.write("                    \n");
      out.write("               \n");
      out.write("               \n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                <center id=\"ali\"><input type=\"submit\" value=\"Submit\" id=\"addmedi\" class=\"addmedi\"></center>\n");
      out.write("                <center><div id=\"show\"></div></center>\n");
      out.write("                \n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("                \n");
      out.write("        ");
      out.write("<script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("<script>\n");
      out.write("$(document).ready(function(){\n");
      out.write("    $(\".dropdown\").hover(            \n");
      out.write("        function() {\n");
      out.write("            $('.dropdown-menu', this).stop( true, true ).slideDown(\"fast\");\n");
      out.write("            $(this).toggleClass('open');        \n");
      out.write("        },\n");
      out.write("        function() {\n");
      out.write("            $('.dropdown-menu', this).stop( true, true ).slideUp(\"fast\");\n");
      out.write("            $(this).toggleClass('open');       \n");
      out.write("        }\n");
      out.write("    );\n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("<!-- here stars scrolling icon -->\n");
      out.write("\t<script type=\"text/javascript\">\n");
      out.write("\t\t$(document).ready(function() {\n");
      out.write("\t\t\t/*\n");
      out.write("\t\t\t\tvar defaults = {\n");
      out.write("\t\t\t\tcontainerID: 'toTop', // fading element id\n");
      out.write("\t\t\t\tcontainerHoverID: 'toTopHover', // fading element hover id\n");
      out.write("\t\t\t\tscrollSpeed: 1200,\n");
      out.write("\t\t\t\teasingType: 'linear' \n");
      out.write("\t\t\t\t};\n");
      out.write("\t\t\t*/\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t$().UItoTop({ easingType: 'easeOutQuart' });\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t});\n");
      out.write("\t</script>\n");
      out.write("<!-- //here ends scrolling icon -->\n");
      out.write("<script src=\"js/minicart.js\"></script>\n");
      out.write("<script>\n");
      out.write("\t\tpaypal.minicart.render();\n");
      out.write("\n");
      out.write("\t\tpaypal.minicart.cart.on('checkout', function (evt) {\n");
      out.write("\t\t\tvar items = this.items(),\n");
      out.write("\t\t\t\tlen = items.length,\n");
      out.write("\t\t\t\ttotal = 0,\n");
      out.write("\t\t\t\ti;\n");
      out.write("\n");
      out.write("\t\t\t// Count the number of each item in the cart\n");
      out.write("\t\t\tfor (i = 0; i < len; i++) {\n");
      out.write("\t\t\t\ttotal += items[i].get('quantity');\n");
      out.write("\t\t\t}\n");
      out.write("\n");
      out.write("\t\t\tif (total < 3) {\n");
      out.write("\t\t\t\talert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');\n");
      out.write("\t\t\t\tevt.preventDefault();\n");
      out.write("\t\t\t}\n");
      out.write("\t\t});\n");
      out.write("\n");
      out.write("\t</script>");
      out.write("\n");
      out.write("        ");
      out.write("<!-- footer -->\n");
      out.write("<br>\n");
      out.write("<br>\t<div class=\"footer\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"col-md-3 w3_footer_grid\">\n");
      out.write("\t\t\t\t<h3>information</h3>\n");
      out.write("\t\t\t\t<ul class=\"w3_footer_grid_list\">\n");
      out.write("\t\t\t\t\t<li><a href=\"events.html\">Events</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"about.html\">About Us</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"products.html\">Best Deals</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"services.html\">Services</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"short-codes.html\">Short Codes</a></li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-md-3 w3_footer_grid\">\n");
      out.write("\t\t\t\t<h3>policy info</h3>\n");
      out.write("\t\t\t\t<ul class=\"w3_footer_grid_list\">\n");
      out.write("\t\t\t\t\t<li><a href=\"faqs.html\">FAQ</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"privacy.html\">privacy policy</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"privacy.html\">terms of use</a></li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-md-3 w3_footer_grid\">\n");
      out.write("\t\t\t\t<h3>what in stores</h3>\n");
      out.write("\t\t\t\t<ul class=\"w3_footer_grid_list\">\n");
      out.write("\t\t\t\t\t<li><a href=\"pet.html\">Pet Food</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"frozen.html\">Frozen Snacks</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"kitchen.html\">Kitchen</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"products.html\">Branded Foods</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"household.html\">Households</a></li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-md-3 w3_footer_grid\">\n");
      out.write("\t\t\t\t<h3>twitter posts</h3>\n");
      out.write("\t\t\t\t<ul class=\"w3_footer_grid_list1\">\n");
      out.write("\t\t\t\t\t<li><label class=\"fa fa-twitter\" aria-hidden=\"true\"></label><i>01 day ago</i><span>Non numquam <a href=\"#\">http://sd.ds/13jklf#</a>\n");
      out.write("\t\t\t\t\t\teius modi tempora incidunt ut labore et\n");
      out.write("\t\t\t\t\t\t<a href=\"#\">http://sd.ds/1389kjklf#</a>quo nulla.</span></li>\n");
      out.write("\t\t\t\t\t<li><label class=\"fa fa-twitter\" aria-hidden=\"true\"></label><i>02 day ago</i><span>Con numquam <a href=\"#\">http://fd.uf/56hfg#</a>\n");
      out.write("\t\t\t\t\t\teius modi tempora incidunt ut labore et\n");
      out.write("\t\t\t\t\t\t<a href=\"#\">http://fd.uf/56hfg#</a>quo nulla.</span></li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t<div class=\"agile_footer_grids\">\n");
      out.write("\t\t\t\t<div class=\"col-md-3 w3_footer_grid agile_footer_grids_w3_footer\">\n");
      out.write("\t\t\t\t\t<div class=\"w3_footer_grid_bottom\">\n");
      out.write("\t\t\t\t\t\t<h4>100% secure payments</h4>\n");
      out.write("\t\t\t\t\t\t<img src=\"images/card.png\" alt=\" \" class=\"img-responsive\" />\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-md-3 w3_footer_grid agile_footer_grids_w3_footer\">\n");
      out.write("\t\t\t\t\t<div class=\"w3_footer_grid_bottom\">\n");
      out.write("\t\t\t\t\t\t<h5>connect with us</h5>\n");
      out.write("\t\t\t\t\t\t<ul class=\"agileits_social_icons\">\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\" class=\"facebook\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\" class=\"twitter\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\" class=\"google\"><i class=\"fa fa-google-plus\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\" class=\"instagram\"><i class=\"fa fa-instagram\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\" class=\"dribbble\"><i class=\"fa fa-dribbble\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"wthree_footer_copy\">\n");
      out.write("\t\t\t\t<p>© 2018 Medi Shop. All rights reserved | Design by <a href=\"#\">HomeMakers</a></p>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("<!-- //footer -->");
      out.write("\n");
      out.write("\t\t\t\t\t\n");
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
