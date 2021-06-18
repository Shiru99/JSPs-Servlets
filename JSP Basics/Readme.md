# Basics of JSPs

## What is JSP - Java Servlet Pages

- JSP is a technology for developing webpages that supports dynamic content. This helps developers insert java code in HTML pages by making use of special JSP tags, most of which start with <% and end with %>
- When you request a .jsp file in a suitable way, the JSP file is automatically translated into a proper Java servlet, compiled, and if successful, loaded into the servlet engine and “run” by performing a method call into the servlet class.



## How JSP works ?


- Web server recognizes that the HTTP request is for a JSP page and forwards it to a JSP engine (http://localhost:8989/JSP_Basics/Basics.jsp)
- The JSP engine loads the JSP page from disk and converts it into a servlet content. This conversion is very simple in which all template text is converted to println() statements and all JSP elements are converted to Java code. This code implements the corresponding dynamic behavior of the page.
- The JSP engine compiles the servlet into an executable class and forwards the original request to a servlet engine.
- The web server forwards the HTTP response to your browser in terms of static HTML content.
- The web browser handles the dynamically-generated HTML page inside the HTTP response exactly as if it were a static page.


#### Path for generated servlet
    
        apache-tomcat-10.0.6/work/Catalina/localhost/JSP_Basics/org/apache/jsp/

---

## PageContext, HttpSession, ServletContext, ServletConfig

### abstract class PageContext

The pageContext object can be used to set, get or remove attribute from one of the following scopes: <b>REQUEST_SCOPE / PAGE_SCOPE / SESSION_SCOPE / APPLICATION_SCOPE</b>

* JSP Page – Scope: PAGE_CONTEXT
* HTTP Request – Scope: REQUEST_CONTEXT
* HTTP Session – Scope: SESSION_CONTEXT
* Application Level – Scope: APPLICATION_CONTEXT


#### Pre-defined for JSP :
```
    PageContext pageContext = _jspxFactory.getPageContext(this, request, response, null, true, 8192, true);
   	ServletContext application = pageContext.getServletContext();
   	ServletConfig config =	 pageContext.getServletConfig();
	HttpSession session = pageContext.getSession();
```

