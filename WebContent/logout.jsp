<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	// create cookies
	Cookie userId = new Cookie("X-userId","");
	Cookie userEmail = new Cookie("X-useremail","");
	// set cookie expiry time
	userId.setMaxAge(0);
	userEmail.setMaxAge(0);
	
	// add cookie to response
	response.addCookie(userEmail);
	response.addCookie(userId);
	
	response.sendRedirect("index.jsp");
	%>
</body>
</html>