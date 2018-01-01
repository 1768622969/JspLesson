<!-- 
	pageEncoding="编码"，jsp在翻译成servlet的java文化时，设置的java文件的字符集
	contentType="text/html; charser=ISO-8859-1"响应给浏览器时的字符集
	没有设置contentType，默认值是"text/html; charset=pageEncoding"
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>    

<!-- 是否忽略el表达式  :    ${ }
	 不同的tomcat对el表达式支持不一样 -->
<%@ page isELIgnored="false"%>

<!-- 是否是线程安全 
	servlet是单实例，线程不安全的，节省内存开销；
	多实例是线程安全的，内存开销增大
-->

<!-- 
	动态包含（动作包含）<jsp:include page="页面"></jsp:include>
	静态包含（指令包含）<%@includ file="页面"%>
	
	相同点：效果相同，都高喊了指定的页面。
	区别：
		1，动态包含使用jsp动作 属性page，静态包含 指令 属性file
		2，原理不同：
			静态包含，直接将jsp的内容之间嵌入访问的jsp（将包含的页面替换到指定位置）
			动态包含，将两个jsp分别翻译成不同的servlet，将被包含的servlet输出的内容包含
			（即发送了一个请求给被包含的页面，获取到了响应的html包含）
		3，动态还可以传参数	
 -->

<%@  page isThreadSafe="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	${1+1}
</body>
</html>