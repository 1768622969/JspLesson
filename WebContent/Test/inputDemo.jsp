<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p>
根据浏览器支持：<br/>
数值约束会应用到输入字段中。
</p>
<form action="">
	数量(1到5之间):
	<input type="number" name="quantity" min="1" max="5">
	<input type="submit">
</form>
</body>
</html>