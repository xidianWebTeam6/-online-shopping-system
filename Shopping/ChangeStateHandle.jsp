<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.util.*,src.DB"%>
<%@ page import="javax.swing.JOptionPane"%>

<html>
<head>
<title>���ж����б�</title>
</head>
<body style="background:url('img/top/bg.gif')">
<%
		String id=request.getParameter("id");
		String sql="update orderInfo set state='0' where oid="+id+";";
		DB.insertUserInfo(sql);
		JOptionPane.showMessageDialog( null,"�������ɳɹ�!");
%>
<jsp:forward page="ChangeState.jsp">
			<jsp:param name="" value=""/>
	</jsp:forward>
 </body>
</html>
