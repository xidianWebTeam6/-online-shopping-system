<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.*,src.DB"%>
<%@ page import="javax.swing.JOptionPane"%>

<html><head>
<title>����</title>

</head>     
<body style="background:url('img/top/bg.gif')">
	<%
		String text=(String)request.getParameter("text");
		String namepp=(String)request.getParameter("goodNmes");
		String use=(String)session.getAttribute("user");
		if(use==null)
		{
		%>
		<jsp:forward page="login.jsp">
			<jsp:param name="" value=""/>
	    </jsp:forward>
		<%
		}
		%>
		
		<%
		
		String sql="insert into comments values('"+namepp+"','"+text+"');";
		Exception f;
		f=DB.insertUserInfo(sql);
		out.println(f);
	%>
	
		<script LANGUAGE="JAVASCRIPT">
			alert("���۳ɹ�����");
			window.location.href="presentation.jsp";  
		</script>
	
		
</body>
</html>
