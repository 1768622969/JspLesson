<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
<%@ page import="java.util.*"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- core标签库 -->
<!-- 1、定义变量 变量存储在四大作用域 page，request，session，application
	标签的属性 value一般都支持el表达式计算
 -->
<c:set var="name" value="后羿" scope="page"></c:set>
<c:set var="result" value="${1+1 }<br/>" scope="page"></c:set>
${pageScope.name }<br/>
${pageScope.result }

<!-- 2、if语句不支持else -->
<c:set var="sal" value="2000"></c:set>
<c:if test="${pageScope.sal<=10000 }">底薪</c:if>
<c:if test="${pageScope.sal>10000 }">高薪</c:if>
<!-- 3、choose when otherwise-->
<c:choose>
	<c:when test="${pageScope.sal<=10000 }">底薪</c:when>
	<c:when test="${10000<pageScope.sal and pageScope.sal<20000 }">中薪</c:when>
	<c:otherwise>高薪</c:otherwise>
</c:choose>
<br/>
<!-- 4、循环 for each -->
<c:forEach var="i" begin="1" end="10" step="1">${pageScope.i }<br/></c:forEach>
<%
	String[] str=new String[]{"打撸","吃鸡"};
	pageContext.setAttribute("str", str);
	
	List list=new ArrayList();
	list.add("嘉文四世");
	list.add("盲僧");
	pageContext.setAttribute("myList", list);
%>
<br/>
<c:forEach var="s" items="${pageScope.str }"> ${pageScope.s } <br/></c:forEach>
<c:forEach var="l" items="${pageScope.myList }"> ${pageScope.l } <br/></c:forEach>

<!-- 5、out 用于输出内容 重点。c:out标签能够让内容的特殊符号进行转译输出
		escapeXml 默认值true表示对html进行转译输出，无风险；false和el输出一样，有风险
 -->
<c:set var="comm" value="<iframe src='https://www.baidu.com'>"></c:set>
<!-- ${pageScope.comm } -->
<c:out value="${pageScope.comm }" escapeXml="true"></c:out>
<%-- 其他core标签
<c:redirect url="http://www.baidu.com"></c:redirect>  重定向
<c:import url=""></c:import>  与jsp:include效果一样，动态包含
 --%>
</body>
</html>


























