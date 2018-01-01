<!-- 
	在jsp页面实现MyCard这个类
 -->
<%@page import="cn.et.lesson04.MyCard"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%--
		MyCard my=new MyCard();      new一个实例
		pageContext.setAttribute("my",my);    设置到作用域
		
		以上两句等价于 <jsp:useBean id="my" class="cn.et.lesson04.MyCard"></jsp:useBean>
		以后创建类就用jsp这种规范
		
		scope="作用域" 设置作用域
		四大作用域：page，session，request，application
	--%>
	<jsp:useBean id="my" class="cn.et.lesson04.MyCard"></jsp:useBean>
	
	<!-- my.setBornDate(new Date());   设值-->
	<jsp:setProperty property="id" name="my" value="666"></jsp:setProperty>
	
	<jsp:getProperty property="id" name="my"/>
	<%=pageContext.getAttribute("my") %>
	
	<!-- jsp:forward  请求跳转 -->
	<jsp:forward page="../index.jsp"></jsp:forward>
</body>
</html>