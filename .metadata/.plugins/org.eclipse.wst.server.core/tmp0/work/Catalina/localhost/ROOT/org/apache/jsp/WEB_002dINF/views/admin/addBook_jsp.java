/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.65
 * Generated at: 2023-05-19 15:55:14 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addBook_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/D:/3학년1학기/BookMate/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/bookmate/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1682428290227L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/views/admin/header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<h4 class=\"text-center fw-bold\">도서등록</h4>\r\n");
      out.write("<form class=\"center\" action=\"/admin/addBook\" method=\"post\" enctype=\"multipart/form-data\">\r\n");
      out.write("	<div class=\"row\">\r\n");
      out.write("		<div class=\"col-md-3 mx-auto\"><br><br>	\r\n");
      out.write("			<div class=\"mb-3\">\r\n");
      out.write("			  <label for=\"bookName\" class=\"form-label\">도서명</label>\r\n");
      out.write("			  <input type=\"text\" class=\"form-control\" id=\"bookName\" name=\"bookName\" required>\r\n");
      out.write("			</div>\r\n");
      out.write("		\r\n");
      out.write("			<div class=\"mb-3\">\r\n");
      out.write("			  <label for=\"bookGenre\" class=\"form-label\">장르</label>\r\n");
      out.write("			  <select name=\"bookGenre\" class=\"form-select\" required>\r\n");
      out.write("			  	<option value=\"\" disabled selected>장르 선택</option>\r\n");
      out.write("			  	<option value=\"경제경영\">경제경영</option>\r\n");
      out.write("			  	<option value=\"자기계발\">자기계발</option>\r\n");
      out.write("			  	<option value=\"소설\">소설</option>\r\n");
      out.write("			  	<option value=\"외국어\">외국어</option>\r\n");
      out.write("			  	<option value=\"여행\">여행</option>\r\n");
      out.write("			  	<option value=\"IT\">IT</option> 	\r\n");
      out.write("			  </select>\r\n");
      out.write("			</div>	\r\n");
      out.write("			<div class=\"mb-3\">\r\n");
      out.write("			  <label for=\"bookPublisher\" class=\"form-label\">출판사</label>\r\n");
      out.write("			  <input type=\"text\" class=\"form-control\" id=\"bookPublisher\" name=\"bookPublisher\" required>\r\n");
      out.write("			</div>\r\n");
      out.write("		\r\n");
      out.write("			<div class=\"mb-3\">\r\n");
      out.write("			  <label for=\"bookAuthor\" class=\"form-label\">저자</label>\r\n");
      out.write("			  <input type=\"text\" class=\"form-control\" id=\"bookAuthor\" name=\"bookAuthor\" required>\r\n");
      out.write("			</div>\r\n");
      out.write("		\r\n");
      out.write("			<div class=\"mb-3\">\r\n");
      out.write("			  <label for=\"bookISBN\" class=\"form-label\">ISBN</label>\r\n");
      out.write("			  <input type=\"text\" class=\"form-control\" id=\"bookISBN\" name=\"bookISBN\" required>\r\n");
      out.write("			</div>\r\n");
      out.write("			\r\n");
      out.write("			<div class=\"mb-3\">\r\n");
      out.write("			  <label for=\"bookFile\" class=\"form-label\">이미지</label>\r\n");
      out.write("			  <input type=\"file\" class=\"form-control\" id=\"bookFile\" name=\"bookFile\" required>\r\n");
      out.write("			</div>			\r\n");
      out.write("			\r\n");
      out.write("			\r\n");
      out.write("			<div class=\"text-center\">\r\n");
      out.write("			  <button type=\"submit\" class=\"btn btn-lg btn-primary\">등록</button>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/views/admin/script.jsp", out, false);
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}