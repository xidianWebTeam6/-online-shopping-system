<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.*,src.DB"%>
<%@ page import="javax.swing.JOptionPane"%>

<html><head>
<title>管理员添加</title>

</head>     
<body style="background:url('img/top/bg.gif')">
	<%
		String name=(String)request.getParameter("mname");
	out.println(name);
	
		String sql="delete from manager where name='"+name+"';";
		Exception f;
		f=DB.insertUserInfo(sql);
		
		JOptionPane.showMessageDialog( null,"删除成功!");
	%>
	<jsp:forward page="ManagerDelete.jsp">
			<jsp:param name="" value=""/>
	    </jsp:forward>
</body>
</html>
