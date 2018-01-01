<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>世界和平</title>
<script type="text/javascript">
	function checkForm(){
		// 邮箱不能为空
		var emailName=document.getElementsByName("emailName")[0].value;
		if(emailName==null || emailName==""){
			alert("请输入邮件地址");
			return;
		}
		
		// 密码不能为空，且确认密码一致
		var password=document.getElementsByName("password")[0].value;
		var affirmPwd=document.getElementsByName("affirmPwd")[0].value;
		if(password==null || password==""){
			alert("请输入密码");
			return;
		}
		
		if(password!=affirmPwd){
			alert("两次密码输入不一致，请重新确认密码");
			return;
		}
		
		
		// 手机号码为11位数
		var phone=document.getElementsByName("phone")[0].value;
		var regex=/^[0-9]{11}$/;
		if(!regex.test(phone)){
			alert("请输入11位数字");
			return;
		}
		
		// 验证通过则提交注册
		document.forms[0].submit();
	}
</script>
</head>
<body>
	<form action="../lesson02/regtext.jsp" method="post">
		*邮箱&nbsp;&nbsp;&nbsp;<input placeholder="请输入您的邮箱"; name="emailName"/>
		<strong>@</strong>
		<select name="emailDomain">
			<option value="1" selected="selected">163.com</option>
			<option  value="2">126.com</option>
			<option value="3">yeah.net</option>
		</select>
		<br/><br/>
		<!-- *邮箱地址&nbsp;<input name="emailAddress"/><br/><br/>
		*个人网址&nbsp;<input name="myURL"/><br/><br/> -->
		*登录密码&nbsp;<input name="password"; type="password"/><br/><br/>
		*确认密码&nbsp;<input name="affirmPwd"; type="password"/><br/><br/>
		*手机号码&nbsp;<input name="phone"/><br/><br/>
		*性别&nbsp;&nbsp;&nbsp;男<input type="radio" name="sex" value="1" checked="checked"/>
							     女<input type="radio" name="sex" value="2" /><br/><br/>
					<input type="radio">同意"服务条款"和"隐私权相关政策"<br/>
		<dl class="regForm-item">
			<dd class="regForm-item-ct">
				<a id="mainRegA" href="javascript:checkForm()" class="btnReg">立即注册</a>			
			</dd>
		</dl>			
		<!-- <dl id="mainMobileDl" class="regForm-item">
			<dt class="regForm-item-tit"><span class="txt-impt">*</span>手机号码</dt>
			<dd>
				<div class="inputContainer itlPhone" style="padding-left:35px;">
					<input type="text" id="mainMobileIpt" name="mobile" class="input ipt norWidthIpt" value="" style="padding-left:35px;width:292px;">
				</div>
			</dd>
		</dl> -->
	</form>
</body>
</html>