<%@ page contentType="text/html;charset=gb2312"%>


<html>
<head>
<title>用户注册</title>

<body style="background:url('img/top/bg.gif')">
<center>
<table border="0" width="700" style="border:1px solid #6daafc">
  <tr>
    <td>
		<table border="0">
		    <caption style="font-size:1.6em;font-weight:bold">用户注册</caption>
		    <form action="registerHandle.jsp" name="registerform" method="post">
				<tr>
					<td align="right" width="150">请填写用户名</td>
					<td><input name="cname" type="text" id="cname" /></td>
					<td id="uinfo" width="400"><font color="blue" size="2px">用户名可以由小写英文字母、中文、数字组成。</font></td>
				</tr>
				<tr>
					<td align="right" width="150">请填写密码</td>
					<td><input name="password" type="password" id="password" /></td>
					<td id="pinfo" width="400"><font color="blue" size="2px">密码可以由小写英文字母、数字组成、要大于6位小于15位。</font></td>
				</tr>
				<tr>
					<td align="right" width="150">请再次输入密码</td>
					<td><input name="spw" type="password" id="spw" /></td>
					<td id="spinfo" width="400"><font color="blue" size="2px">密码可以由小写英文字母、数字组成，要大于6位小于15位。</font></td>
				</tr>
				<tr>
					<td align="right" width="150">请输入E-mail</td>
					<td>
					  <input 
					    name="email" 
					    type="text" id="email" />
					</td>
					<td id="einfo" width="400"><font color="blue" size="2px">请输入符合格式的邮箱地址 。</font></td>
				</tr>
				</table>
				<table border="0">
				<tr align="center">
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td>
						<!--  提示注册成功-->
						<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
						<input name="action" type="submit" value="注册"/>
					</td>
					<td>
						<a href="presentation.jsp"><img border="0" id="fh"
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