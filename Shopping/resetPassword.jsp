<%@ page contentType="text/html;charset=gb2312" %>

<html>
  <head>
    <title>密码重置</title>
  </head>
<body style="background:url('img/top/bg.gif')">
<center>
<table border="0" width="400" style="border:1px solid #6daafc">
  <tr>
    <td>
		<table width="100%" cellpadding="0" cellspacing="0" border="0">
	  	<caption style="font-size:1.6em;font-weight:bold">密码重置</caption>
             <form  method="post" name="setPasswordform" action="resetPasswordHandle.jsp">
                <tr>
                  <td align="right">请输入用户名</td>
                  <td>
                  	<input type="text" name="rename"/>
                  </td>
                </tr>
				<tr>
                  <td align="right">请输入旧密码</td>
                  <td><input type="password" name="oldpd"/></td>
                </tr>
                <tr>
                  <td align="right">请输入新密码</td>
                  <td><input type="password" name="newpd"/></td>
                </tr>
                <tr>
                  <td align="right">请再次输入新密码</td>
                  <td><input type="password" name="renewpd"/></td>
                </tr>
                <tr>
                  <td align="right">
                    <input type="submit" value="提交" />
                  </td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <td><input type="reset" value="重置"/></td>
                </tr>
            </form>
    	</table>
    </td>
  </tr>
</table>
</center>
</body>
</html>