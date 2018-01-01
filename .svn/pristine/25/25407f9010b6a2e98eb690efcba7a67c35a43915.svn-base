<!-- jsp是MVC设计模式中的view层
	主要是和用户进行交互（肉眼看到的界面）只允许出现html标记，el表达式，标签
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/ms">
		<input type="text" name="ename"/>
		<input type="submit" value="提交"/>
	</form>
<%--<table>
	<tr><th>用户名</th><th>密码</th></tr>
	<c:forEach var="tmp" items="${requestScope.tableList }">
		<tr><td>${pageScope.tmp.username }</td><td>${pageScope.tmp.password }</td></tr>
	</c:forEach>
	</table> --%>
	
	<table>
	<tr><th>员工编号</th><th>员工姓名</th><th>员工薪水</th></tr>
	<c:forEach var="tmp" items="${requestScope.tableList.data}">
		<tr><td>${pageScope.tmp.EMPNO }</td><td>${pageScope.tmp.ENAME }</td><td>${pageScope.tmp.SAL }</td></tr>
	</c:forEach>
	
	<tr><td colspan="3">
		<a href="${pageContext.request.contextPath }/ms?curPage=1">首页</a>
		<a href="${pageContext.request.contextPath }/ms?curPage=${requestScope.tableList.prePage}">上一页</a>
		
		<c:forEach var="i" begin="1" end="${requestScope.tableList.totalPage}" step="1">
			<a href="${pageContext.request.contextPath }/ms?curPage=${pageScope.i}">${pageScope.i}</a>
		</c:forEach>
		
		<a href="${pageContext.request.contextPath }/ms?curPage=${requestScope.tableList.nextPage}">下一页</a>
		<a href="${pageContext.request.contextPath }/ms?curPage=${requestScope.tableList.totalPage}">尾页</a>
	</td></tr>
	
	</table>

<%-- ${requestScope.tableList } --%>
	
</body>
</html>