<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.*"%>
<html><head>
<title>管理员添加</title>

</head>     
<body style="background:url('img/top/bg.gif')">
<br><br>
<table border="0" width="700" style="border:1px solid #6daafc" align="center">
  <tr>
    <td>
		<table border="0" align="center">
			<caption style="font-size:1.5em;font-weight:bold">添加管理员</caption>
			<tr>
			<td>			
			<form action="ManagerAddHandle.jsp" name="aform" method="post">
				<table border="0">
				<tr>
					<td align="right">请填写管理员名</td>
					<td><input name="mname" type="text" id="mname" /></td>
					<td id="minfo"><font color="blue" size="2px">管理员名可以由小写英文字母、中文、数字组成。</font></td>
				</tr>
				<tr>
					<td align="right">请填写密码</td>
					<td><input name="mpassword" type="password" id="mpassword" /></td>
					<td id="mpinfo"><font color="blue" size="2px">密码可以由小写英文字母、数字组成，要大于6位小于15位。</font></td>
				</tr>
				<tr>
					<td align="right">请再次输入密码</td>
					<td><input name="mpw" type="password" id="mpw" /></td>
					<td id="mpsinfo"><font color="blue" size="2px">密码可以由小写英文字母、数字组成，要大于6位小于15位。</font></td>
				</tr>
				<tr>
					<td align="right">请选择管理员权限</td>
					<td><select  name="quanxian" id="quanxian" style="width:155;">
								<option selected value="putong">普通
						        <option value="chaoji">超级
						</select></td>
					<td id="qxinfo"><font color="blue" size="2px">权限可以为'普通'或'超级'！</font></td>
				</tr>
				</table>
				<table border="0" align="center">
				<tr align="center">
					<td><input name="tianjia" type="submit" value="添加" />
					
					<td>
						<input type="reset" id="zhuce" name="zhuce" value="重置"/>
					</td>
				</tr>
				</table>
			</form>
			</td>
			</tr>
			</table>
		</td>
	</tr>
</table>
</body>
</html>
