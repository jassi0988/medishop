package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;
import java.sql.*;

public final class demo_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(8);
    _jspx_dependants.add("/headerfiles.jsp");
    _jspx_dependants.add("/userheader.jsp");
    _jspx_dependants.add("/newheadercss.jsp");
    _jspx_dependants.add("/comboboxcss.jsp");
    _jspx_dependants.add("/cartitemno.jsp");
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/script.jsp");
    _jspx_dependants.add("/footer.jsp");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"css/f4/font-awesome.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" /> \n");
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
      out.write("            .upload-btn-wrapper {\n");
      out.write("                position: relative;\n");
      out.write("                overflow: hidden;\n");
      out.write("                display: inline-block;\n");
      out.write("              }\n");
      out.write("\n");
      out.write("              .btn {\n");
      out.write("                border: 2px solid gray;\n");
      out.write("                color: gray;\n");
      out.write("                background-color: white;\n");
      out.write("                padding: 8px 20px;\n");
      out.write("                border-radius: 8px;\n");
      out.write("                font-size: 20px;\n");
      out.write("                font-weight: bold;\n");
      out.write("              }\n");
      out.write("\n");
      out.write("              .upload-btn-wrapper input[type=file] {\n");
      out.write("                font-size: 100px;\n");
      out.write("                position: absolute;\n");
      out.write("                left: 0;\n");
      out.write("                top: 0;\n");
      out.write("                opacity: 0;\n");
      out.write("              }\n");
      out.write("\n");
      out.write("        </style>    \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            if(session.getAttribute("username")!=null)             
            {
          
      out.write("      \n");
      out.write("                ");
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
      out.write("                margin-right: 10px;\n");
      out.write("            }\n");
      out.write("            .w3l_search li{\n");
      out.write("                display: inline-block;\n");
      out.write("                padding-right: 10px;\n");
      out.write("            }\n");
      out.write("            .w3l_search font{\n");
      out.write("                color: #000;                    \n");
      out.write("            }\n");
      out.write("            #no{\n");
      out.write("                margin-top: 18px;\n");
      out.write("                margin-right: -10px;\n");
      out.write("            }\n");
      out.write("            .nowrap{\n");
      out.write("                white-space: nowrap;\n");
      out.write("            }\n");
      out.write("            .fa-shopping-cart{\n");
      out.write("                font-size: 30px;\n");
      out.write("                margin-top: 20px;\n");
      out.write("                color: #19a9b4;\n");
      out.write("            }\n");
      out.write("            .fa-map-marker{\n");
      out.write("                font-size: 30px;\n");
      out.write("                margin-left: .8em;\n");
      out.write("                color: #19a9b4;\n");
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
      out.write("    <style>\n");
      out.write("        \n");
      out.write("        #m{\n");
      out.write("                font-size: 23px;\n");
      out.write("            margin-left: .6em;\n");
      out.write("            color: #19a9b4;\n");
      out.write("        }\n");
      out.write("        .badge {\n");
      out.write("        padding-left: 9px;\n");
      out.write("        padding-right: 9px;\n");
      out.write("        -webkit-border-radius: 9px;\n");
      out.write("        -moz-border-radius: 9px;\n");
      out.write("        border-radius: 9px;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      #cart-badge {\n");
      out.write("          margin-top: 20px;\n");
      out.write("          font-size: 14px;\n");
      out.write("          background: #19a9b4;\n");
      out.write("          color: #fff;\n");
      out.write("          padding: 0 5px;\n");
      out.write("          vertical-align: top;\n");
      out.write("      }\n");
      out.write("      #alig{\n");
      out.write("          \n");
      out.write("      }\n");
      out.write("      #nam{\n");
      out.write("          color: #19a9b4;\n");
      out.write("      }\n");
      out.write("     </style>\n");
      out.write("</head>   \n");
      out.write("<body> \n");
      out.write("    ");
      out.write('\n');
      out.write('\n');

         
        int count=0;
                            try
                            {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                                try
                                {
                                    String a="select * from cart where email=?";
                                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                                    if(session.getAttribute("username")!=null)
                                    {
                                        mystatement.setString(1, session.getAttribute("username").toString());
                                    }
                                    else
                                    {
                                        mystatement.setString(1, session.getId());
                                    }
                                    ResultSet myres=mystatement.executeQuery();
                                    if(myres.next())
                                    {                                        
                                        do
                                        { 
                                            count++;
                                        }while(myres.next());
                                    }
                                    

                                }
                                catch(Exception e)
                                {
                                out.print("as"+e.getMessage());
                                }

                            }
                            catch(Exception e)
                            {
                            out.println("Error in Connection " + e.getMessage());
                            }
     
      out.write("\n");
      out.write("\t<div class=\"agileits_header\">\n");
      out.write("\t\t<div class=\"w3l_offers\">\n");
      out.write("\t\t\t<a href=\"index.jsp\"><img src=\"images/flogo1.png\"></a>\n");
      out.write("\t\t</div>\n");
      out.write("                \n");
      out.write("\t\t<div class=\"w3l_search\">\n");
      out.write("                    \n");
      out.write("                    <li><i class=\"fa fa-phone\">Call:0181-2421510</i></li>\n");
      out.write("                    <li><a href=\"coustmerprofile.jsp\"><font><i class=\"fa fa-user\">   View Profile</i></font></a></li>\n");
      out.write("                    <li><a href=\"userlogout.jsp\"><font><i class=\"fa fa-sign-out\">   Sign Out</i></font></a></li><br>\n");
      out.write("                    <div id=\"alig\">\n");
      out.write("                        <a href=\"cart.jsp\"><i class=\"fa fa-shopping-cart\"></i></a>\n");
      out.write("                        <lavel id=\"cart-badge\" class=\"badge badge-warning\">");
      out.print(count);
      out.write("</lavel>\n");
      out.write("                        <a href=\"\"><i class=\"fa fa-map-marker\"></i>   Shop Location</a>\n");
      out.write("                        ");
 String name=session.getAttribute("username").toString(); 
      out.write("\n");
      out.write("                        <li><p id=\"nam\"><i class=\"fa fa-user\" id=\"m\"></i>   ");
      out.print(name);
      out.write("</p></li>\n");
      out.write("                    </div>\n");
      out.write("                </div> \n");
      out.write("            \n");
      out.write("                <div class=\"w3l_search\" id=\"no\">\n");
      out.write("                    \n");
      out.write("                    <form action=\"search.jsp\" method=\"post\" >\n");
      out.write("                        \n");
      out.write("                        <input type=\"text\" name=\"product\" placeholder=\"Search A Product\">\n");
      out.write("                        <input type=\"submit\" value=\" \">\n");
      out.write("                          \n");
      out.write("                    </form>\n");
      out.write("                \n");
      out.write("                </div> \n");
      out.write("\t\t\t\n");
      out.write("\t\t\n");
      out.write("\t\t\n");
      out.write("\t\t<div class=\"clearfix\" style=\"border-bottom: 1px solid #eee;\"> </div>\n");
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
      out.write("\n");
      out.write("                                    <li><a href=\"pcare.jsp\"><p id=\"he\">Personal Care</p></a></li>\n");
      out.write("                                    <li><a href=\"bandm.jsp\"><p id=\"he\">Baby And Mother</p></a></li>\n");
      out.write("                                     <li><a href=\"showmedi.jsp\"><p id=\"he\">Medicines</p></a></li>\n");
      out.write("                                    <li><a href=\"beauty.jsp\"><p id=\"he\">Beauty</p></a></li>\n");
      out.write("                                    <li><a href=\"healthcare.jsp\"><p id=\"he\">HealthCare</p></a></li>\n");
      out.write("                                    <li><a href=\"wellness.jsp\"><p id=\"he\">Wellness</p></a></li>\n");
      out.write("                                    <li><a href=\"patanjali.jsp\"><p id=\"he\">Ayurvedic</p></a></li>\n");
      out.write("                                    \n");
      out.write("                                    \n");
      out.write("                                    \n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class=\"clearfix\" > </div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("<br>\n");
      out.write("</body>\n");
      out.write("<!-- //header -->\n");
      out.write("\n");
      out.write("         ");
       
            }
            else
            {
           
      out.write("\n");
      out.write("             ");
      out.write("\n");
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
      out.write("                margin-right: 10px;\n");
      out.write("            }\n");
      out.write("            .w3l_search li{\n");
      out.write("                display: inline-block;\n");
      out.write("                padding-right: 10px;\n");
      out.write("            }\n");
      out.write("            .w3l_search font{\n");
      out.write("                color: #000;                    \n");
      out.write("            }\n");
      out.write("            #no{\n");
      out.write("                margin-top: 18px;\n");
      out.write("                margin-right: -10px;\n");
      out.write("            }\n");
      out.write("            .nowrap{\n");
      out.write("                white-space: nowrap;\n");
      out.write("            }\n");
      out.write("            .fa-shopping-cart{\n");
      out.write("                font-size: 30px;\n");
      out.write("                margin-top: 20px;\n");
      out.write("                color: #19a9b4;\n");
      out.write("            }\n");
      out.write("            .fa-map-marker{\n");
      out.write("                font-size: 30px;\n");
      out.write("                margin-left: .8em;\n");
      out.write("                color: #19a9b4;\n");
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
      out.write("    <style>\n");
      out.write("        \n");
      out.write("        .badge {\n");
      out.write("        padding-left: 9px;\n");
      out.write("        padding-right: 9px;\n");
      out.write("        -webkit-border-radius: 9px;\n");
      out.write("        -moz-border-radius: 9px;\n");
      out.write("        border-radius: 9px;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      #cart-badge {\n");
      out.write("          margin-top: 20px;\n");
      out.write("          font-size: 14px;\n");
      out.write("          background: #19a9b4;\n");
      out.write("          color: #fff;\n");
      out.write("          padding: 0 5px;\n");
      out.write("          vertical-align: top;\n");
      out.write("      }\n");
      out.write("     </style>\n");
      out.write("     \n");
      out.write("</head>   \n");
      out.write("<body> \n");
      out.write("     ");
      out.write('\n');
      out.write('\n');

         
        int count=0;
                            try
                            {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/medishop", "root", "");
                                try
                                {
                                    String a="select * from cart where email=?";
                                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                                    if(session.getAttribute("username")!=null)
                                    {
                                        mystatement.setString(1, session.getAttribute("username").toString());
                                    }
                                    else
                                    {
                                        mystatement.setString(1, session.getId());
                                    }
                                    ResultSet myres=mystatement.executeQuery();
                                    if(myres.next())
                                    {                                        
                                        do
                                        { 
                                            count++;
                                        }while(myres.next());
                                    }
                                    

                                }
                                catch(Exception e)
                                {
                                out.print("as"+e.getMessage());
                                }

                            }
                            catch(Exception e)
                            {
                            out.println("Error in Connection " + e.getMessage());
                            }
     
      out.write("\n");
      out.write("                            \n");
      out.write("\t<div class=\"agileits_header\">\n");
      out.write("\t\t<div class=\"w3l_offers\">\n");
      out.write("                    <a href=\"index.jsp\"><img src=\"images/flogo1.png\"></a>\n");
      out.write("\t\t</div>\n");
      out.write("                \n");
      out.write("\t\t<div class=\"w3l_search\">\n");
      out.write("                    \n");
      out.write("                    <li><i class=\"fa fa-phone\">    Call:0181-2421510</i></li>\n");
      out.write("                    <li><a href=\"log.jsp\"><font><i class=\"fa fa-pencil\">   Create Account</i></font></a></li>\n");
      out.write("                    <li><a href=\"log.jsp\"><font><i class=\"fa fa-sign-in\">   Sign In</i></font></a></li>\n");
      out.write("                    <a href=\"cart.jsp\"><i class=\"fa fa-shopping-cart\"></i></a>\n");
      out.write("                    <lavel id=\"cart-badge\" class=\"badge badge-warning\">");
      out.print(count);
      out.write("</lavel>\n");
      out.write("                    <a href=\"\"><i class=\"fa fa-map-marker\"></i>   Shop Location</a>\n");
      out.write("                    <a href=\"adminlog.jsp\"><i class=\"fa fa-sign-in\" style=\"font-size:30px;margin-left: .5em;color: #19a9b4;\"></i>        Admin Pannel</a>\n");
      out.write("                </div> \n");
      out.write("            \n");
      out.write("                <div class=\"w3l_search\" id=\"no\">\n");
      out.write("                    \n");
      out.write("                    <form action=\"search.jsp\" method=\"post\" >\n");
      out.write("                        \n");
      out.write("                        <input type=\"text\" name=\"product\" placeholder=\"Search A Product\">\n");
      out.write("                        <input type=\"submit\" value=\" \">\n");
      out.write("                          \n");
      out.write("                    </form>\n");
      out.write("                \n");
      out.write("                </div> \n");
      out.write("\t\t\t\n");
      out.write("\t\t\n");
      out.write("\t\t\n");
      out.write("            <div class=\"clearfix\" style=\"border-bottom: 1px solid #eee;\"> </div>\n");
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
      out.write("\n");
      out.write("                                    <li><a href=\"pcare.jsp\"><p id=\"he\">Personal Care</p></a></li>\n");
      out.write("                                    <li><a href=\"bandm.jsp\"><p id=\"he\">Baby And Mother</p></a></li>\n");
      out.write("                                     <li><a href=\"showmedi.jsp\"><p id=\"he\">Medicines</p></a></li>\n");
      out.write("                                    <li><a href=\"beauty.jsp\"><p id=\"he\">Beauty</p></a></li>\n");
      out.write("                                    <li><a href=\"healthcare.jsp\"><p id=\"he\">HealthCare</p></a></li>\n");
      out.write("                                    <li><a href=\"wellness.jsp\"><p id=\"he\">Wellness</p></a></li>\n");
      out.write("                                    <li><a href=\"patanjali.jsp\"><p id=\"he\">Ayurvedic</p></a></li>\n");
      out.write("                                    \n");
      out.write("                                    \n");
      out.write("                                    \n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class=\"clearfix\" > </div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("<!-- //header -->\n");
      out.write("\n");
      out.write("          ");
   
            }
         
      out.write("\n");
      out.write("        <br>\n");
      out.write("         <div class=\"item active\">\n");
      out.write("             <img src=\"images/wall/New folder/illigal medicines 4 (1).jpg\" alt=\"Los Angeles\" style=\"width:100%; height: 400px;\">\n");
      out.write("        <div class=\"carousel-caption\">\n");
      out.write("          \n");
      out.write("        </div>\n");
      out.write("      </div>\n");
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
