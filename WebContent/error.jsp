<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include> <br><br><br>
	
	<font color="red" align="center">
	  Error : <%= exception.getMessage() %>
	</font> <br>
	Error Code : <%= response.getStatus() %> <br>
	Please go to <a href="index.jsp" >Home Page</a> 
</body>
</html>