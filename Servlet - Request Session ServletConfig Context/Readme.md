# Servlets

## Servlet - Threads, not Object 

When an HTTP request comes in, Tomcat pulls a thread from the Tomcat's thread pool (Note : Servlets do not "have" threads), tells the thread to run the servlet code, then returns the thread to the pool when the servlet process() method is complete. If there are multiple requests coming in, Tomcat will pull a thread from the pool for each request and dispatch a servlet (JSPs count as servlets here). If there are not, the threads remain idle.

---

## Request, session & context objects


- Request scope

    Request scope start from the moment an HTTP request hits a servlet in our web container and end when the servlet is done with delivering the HTTP response.


- Session scope

    A session scope starts when a client (e.g. browser window) establishes connection with our web application till the point where the browser window is closed. Session scope spans across multiple requests from the same client.

- ServletConfig

    ServletConfig is an object containing some initial parameters or configuration information created by Servlet Container and passed to the servlet during initialization. ServletConfig is servlet specific - Each servlet has got its own ServletConfig object. (Note - ServletContext is for whole application)

- Application or context scope

    Context scope starts from the point where a web application is put into service (started) till it is removed from service (shutdown) or the web application is reloaded. Parameters/attributes within the application scope will be available to all requests and sessions. 

---

### Request getParameter vs getAttribute :

- getParameter() returns http request parameters. Those passed from the client to the server. For example http://example.com/servlet?parameter=1. Can only return String

- getAttribute() is for server-side usage only - you fill the request with attributes that you can use within the same request. For example - you set an attribute in a servlet, and read it from a JSP. Can be used for any object, not just string.