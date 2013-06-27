<%@ page contentType="text/html;charset=gb2312" %>


<html>
<head>
<title>管理员登录</title>
</head>
<body style="background:url('img/top/bg.gif')">
<center>
<table border="0" width="400" style="border:1px solid #6daafc">
  <tr>
    <td>
		<table border="0" width="100%">
		  <caption style="font-size:1.6em;font-weight:bold">管理员登录</caption>
		  <form name="loginform"  method="post" action="ManagerLoginHandle.jsp">
			<tr>
				<td align="right" width="150">请填写管理员名</td>
				<td width="250"><input name="loginname" type="text" id="loginname" size="25"/></td>
			
			</tr>
			<tr>
				<td align="right" width="150">请填写密码</td>
				<td width="250"><input name="loginpassword" type="password" id="loginpassword" size="25"/></td>
			</tr>
			<tr align="center">
				<td align="right">
					<input type="submit" value="提交"/>
				</td>
				<td align="left"><a href="Welcome.jsp"><img border="0" id="fh"
			    	 src="img/dlfh/fh1.png" style="cursor:hand" /></a>
			    </td>
			</tr>
			
			</form>
			</table>
			
    </td>
  </tr>
</table>
</center>
 </body>
</html>
