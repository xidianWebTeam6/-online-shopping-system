<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.*,src.DB"%>
<%@ page import="javax.swing.JOptionPane"%>

<html><head>
<title>管理员添加</title>

</head>     
<body style="background:url('img/top/bg.gif')">
	<%
		String name=(String)request.getParameter("mname");
		String pd=(String)request.getParameter("mpassword");
		String npd=(String)request.getParameter("mpw");
		String quanxian=(String)request.getParameter("quanxian");
		
		
		if(pd.equals(npd))
		{
		
		Vector<String[]> vv = new Vector<String[]>();
		String sql="insert into manager values('"+name+"','"+pd+"','"+quanxian+"');";
		DB.insertUserInfo(sql);
		JOptionPane.showMessageDialog( null,"添加成功!");
	%>
	<jsp:forward page="ManagerAdd.jsp">
			<jsp:param name="" value=""/>
	    </jsp:forward>
		<%
			}
			else
			{
		%>
		<script LANGUAGE="JAVASCRIPT">
			alert("密码不一致！！");
			window.location.href="ManagerAdd.jsp";  
		</script>
		<%
		}
		%>
</body>
</html>
