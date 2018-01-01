
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="cn.et.shopDBUtils.DBUtils"%>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.sql.SQLException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
	
	public Connection conn=null;
	public void init() throws ServletException{
		try{
			conn=DBUtils.getConnection();
		}catch (Exception e){
			e.printStackTrace();
		}
	}
	
	protected void finalize() throws Throwable{
		try{
			conn.close();
		}catch (SQLException e){
			e.printStackTrace();
		}
	}
	%> 
	<%
	String emailName=request.getParameter("emailName");
	String emailDomain=request.getParameter("emailDomain");
	String password=request.getParameter("password");
	String affirmPwd=request.getParameter("affirmPwd");
	String phone=request.getParameter("phone");
	String sex=request.getParameter("sex");
	String dgff= emailDomain.equals("1")?"163.com":(emailDomain.equals("2")?"126.com":"yeah.net");
	String eName=emailName+"@"+dgff;
	%>
	邮箱<%=emailName %>
	域名<%= dgff%>
	密码<%=password %>
	确认密码<%=affirmPwd %>
	手机号码<%=phone %>
	性别<%=sex.equals("1")?"男":"女" %>
	<%
	String sql="insert into reguser(email,password,affirmPwd,phone,sex) values(?,?,?,?,?)";
	PreparedStatement sta=conn.prepareStatement(sql);
	sta.setString(1,eName);
	sta.setString(2,password);
	sta.setString(3,affirmPwd);
	sta.setString(4,phone);
	sta.setString(5,sex);
	sta.executeUpdate();
	sta.close();
	%>
</body>
</html>




