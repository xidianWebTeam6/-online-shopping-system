<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.*,src.DB"%>
<%@ page import="javax.swing.JOptionPane"%>

<html><head>
<title>����Ա���</title>

</head>     
<body style="background:url('img/top/bg.gif')">
	<%
		String id=(String)request.getParameter("id");

	
		String sql="delete from orderInfo where oid="+id+";";
		Exception f;
		f=DB.insertUserInfo(sql);
		String sql1="delete from orderMeg where oid="+id+";";
		f=DB.insertUserInfo(sql1);
	
	%>
		<script LANGUAGE="JAVASCRIPT">
			alert("ɾ���ɹ�����");
			window.location.href="order.jsp";  
		</script>
	
</body>
</html>