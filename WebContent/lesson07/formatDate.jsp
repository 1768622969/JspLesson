<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="date" class="java.util.Date"></jsp:useBean>
<!-- formatDate 将日期类型转换成字符串 -->
<fmt:formatDate value="${pageScope.date }" pattern="yyyy-MM-dd HH:mm:ss" />
<!-- parseDate 将字符串转换成日期类型  不常用-->
<fmt:parseDate value="2017/10/10" pattern="yyyy/MM/dd"></fmt:parseDate>

<!-- 将数字类型格式化输出，数字类型转换成字符串123 DecimalFormat类-->
<fmt:formatNumber value="123.54986" pattern="###.##"></fmt:formatNumber>

<!-- 国际化-->
<!-- 设置请求浏览器的locale对象 -->
<fmt:setLocale value="${pageContext.request.locale }"/>
<!-- 设置读取的资源文件的basename -->
<fmt:setBundle basename="my"></fmt:setBundle>
<!-- 读取资源文件的消息 -->
<fmt:message key="userName"></fmt:message>
</body>
</html>