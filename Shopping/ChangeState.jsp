<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.util.*,src.DB"%>


<html>
<head>
<title>���ж����б�</title>
</head>
<body style="background:url('img/top/bg.gif')">


<%
	String str=(String)session.getAttribute("Manager");
	if(str==null)
	{
%>
		<script LANGUAGE="JAVASCRIPT">
		alert("���ȵ�¼������");
		window.location.href="ManagerLogin.jsp";  
		</script>
<%
	}
%>

<form action="ChangeStateHandle.jsp" name="aform" method="post">
	<table border="0" width="700" style="border:1px solid #6daafc" align="center">
  <tr>
    <td>
		<table border="0" align="center">
			<caption style="font-size:1.5em;font-weight:bold">�޸Ķ���״̬</caption>
			<tr>
			<td>			
			
					���붩�����:<input name="id" type="text" id="id" /><br/>
					<input type="submit" value="�޸�"/>
			
			</td>
			</tr>
			</table>
		</td>
	</tr>
</table>
</form>

 </body>
</html>
