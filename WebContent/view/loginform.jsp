<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	this is login page.
	<form action="/HelloMVC/doLogin" method="get">
		
		<input type="text" name="ID" /> <br />
		<input type="password" name="PW" /><br /> 
		<input type="submit" value="Login" />


	</form>
</body>
</html>