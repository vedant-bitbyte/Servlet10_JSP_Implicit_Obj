<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2> Below are the details: </h2>
	<% 
	
	// The implicit objs are the pre-defined, readty-to-use variables that are automatically available in every jsp
	
	String name = request.getParameter("name"); // request is the HttpServletRequest obj
	String address = request.getParameter("address");
	
	out.print(name + " : " + address);
	
	
	// pageContext is an implicit obj which is all rounder, we can use it to get, store or remove attributes.
	
	pageContext.setAttribute("msg1", "This is page level message", PageContext.PAGE_SCOPE);
	// Now PAGE_SCOPE means this msg1 is set for this page only. We can't get this msg is any other page.
	
	pageContext.setAttribute("msg2", "This is session level message", PageContext.SESSION_SCOPE);
	// session.setAttribute("msg2", "This is session level message");
	// Now SESSION_SCOPE means this msg2 is set in session obj, so where ever the particular session is going, this
	// msg2 can be retrieved.
	
	pageContext.setAttribute("msg3", "This is application level message", PageContext.APPLICATION_SCOPE);
	// application.setAttribute("msg3", "This is application level message");
	// Now APPLICATION_SCOPE means this msg3 is set in ServletContext, so we can retrive thi msg3 anywhere on any page.
	
	pageContext.setAttribute("msg4", "This is request level message", PageContext.REQUEST_SCOPE);
	// request.setAttribute("msg4", "This is request level message");
	// Now REQUEST_SCOPE means this msg4 is only available until the particular request is processed.
	// If a browser send a new request, then again this msg4 is newly stored.
	
	
	
	pageContext.include("error.jsp");
	// We can also use pageContext obj to include page. (no error.jsp in this app)
	
	pageContext.forward("abcd.jsp");
	// similar to RequestDispatcher obj's forward method(), no new request is created.
	%>
	
	
</body>
</html>