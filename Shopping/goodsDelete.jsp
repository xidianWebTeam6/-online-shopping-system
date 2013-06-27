<%@ page contentType="text/html;charset=gb2312"%>

<html>
<head>
<title>top</title>
</head>
<body style="background:url('img/top/bg.gif') ">


<%
	String str=(String)session.getAttribute("Manager");
	if(str==null)
	{
%>
		<script LANGUAGE="JAVASCRIPT">
		alert("请先登录！！！");
		window.location.href="ManagerLogin.jsp";  
		</script>
<%
	}
%>



<form action="goodsDeleteHandle.jsp">
	<table >
		<tr>
		<th>删除商品信息</th>
		</tr>
		<tr>
		<td>请输入产品的ID：</td>
		<td><input type="text" name="delID"/></td>
		<td><input type="submit" value="删除"/></td>
		</tr>
	</table>
</form>
</body>
</html>