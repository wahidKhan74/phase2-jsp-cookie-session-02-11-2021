<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validate Cookie based Access</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include> <br><br><br>
	<%
		Cookie ck[] = request.getCookies();
		String userId = ck[0].getValue();
	    String userEmail = ck[1].getValue();
	    
	    if(userId == null || userId.equals("") || userEmail ==null || userEmail.equals("") ){
	    	throw new ServletException(" :: Cookie are missing, please login to app ! :: ");
	    } else{
	    	out.print("<h2>Successfully session with cookies as "+ userEmail+ "</h2>");
	    }
	
	%>
</body>
</html>