<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="counter.jsp">
<input type='text' name="parameter1" id="enter" style="width:50px;height:50px;font-size:30px" value="${param.parameter1}"/>
<input type='text' name="sign" style="width:20px;font-size:20px" value="${param.sign}" id="comm"/>
<input type='text' name="parameter2" id="wait" style="width:50px;height:50px;font-size:30px" value="${param.parameter2}"/>
<input type='text' name="resultSign" style="width:10px" value="="/>
<input type='text' name="result" style="width:200px;height:50px;font-size:30px" value="${param.sign eq '+'?(param.parameter1+param.parameter2):
																						(param.sign eq '-'?(param.parameter1-param.parameter2):
																						(param.sign eq '*'?(param.parameter1*param.parameter2):
																						(param.sign eq '/'?(param.parameter1/param.parameter2):null)))}";/><br/>
<input type='button' id="7" value="7"/>
<input type='button' id="8" value="8"/>
<input type='button' id="9" value="9"/>
<input type='button' id="+" value="+"/><br/>
<input type='button' id="4" value="4"/>
<input type='button' id="5" value="5"/>
<input type='button' id="6" value="6"/>
<input type='button' id="-" value="-"/><br/>
<input type='button' id="1" value="1"/>
<input type='button' id="2" value="2"/>
<input type='button' id="3" value="3"/>
<input type='button' id="*" value="*"/><br/>
&nbsp;&nbsp;<input type='button' name="0" value="0" id="0"/>
<input type='submit' id="=" value="="/>
<input type='button' id="/" value="/"/><br/>
</form>

<script>
	window.onload = function() {
		document.getElementById('0').onclick = function() {
			document.getElementById('enter').value= document.getElementById('enter').value+'0';
		};
		document.getElementById('1').onclick = function() {
			document.getElementById('enter').value= document.getElementById('enter').value+'1';
		};
		document.getElementById('2').onclick = function() {
			document.getElementById('enter').value=document.getElementById('enter').value+ '2';
		};
		document.getElementById('3').onclick = function() {
			document.getElementById('enter').value= document.getElementById('enter').value+'3';
		};
		document.getElementById('4').onclick = function() {
			document.getElementById('enter').value=document.getElementById('enter').value+ '4';
		};
		document.getElementById('5').onclick = function() {
			document.getElementById('enter').value=document.getElementById('enter').value+ '5';
		};
		document.getElementById('6').onclick = function() {
			document.getElementById('enter').value=document.getElementById('enter').value+ '6';
		};
		document.getElementById('7').onclick = function() {
			document.getElementById('enter').value= document.getElementById('enter').value+'7';
		};
		document.getElementById('8').onclick = function() {
			document.getElementById('enter').value= document.getElementById('enter').value+'8';
		};
		document.getElementById('9').onclick = function() {
			document.getElementById('enter').value= document.getElementById('enter').value+'9';
		};
		document.getElementById('+').onclick = function() {
			document.getElementById('enter').id = 'slep';
			document.getElementById('wait').id='enter';
			document.getElementById('slep').id = 'wait';
			document.getElementById('comm').value='+';
		}
		document.getElementById('-').onclick=function() {
			document.getElementById('enter').id = 'slep';
			document.getElementById('wait').id='enter';
			document.getElementById('slep').id = 'wait';
			document.getElementById('comm').value='-';
		}
		document.getElementById('*').onclick=function() {
			document.getElementById('enter').id = 'slep';
			document.getElementById('wait').id='enter';
			document.getElementById('slep').id = 'wait';
			document.getElementById('comm').value='*';
		}
		document.getElementById('/').onclick=function() {
			document.getElementById('enter').id = 'slep';
			document.getElementById('wait').id='enter';
			document.getElementById('slep').id = 'wait';
			document.getElementById('comm').value='/';
		}
	};
</script>
</body>
</html>