<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import ="java.util.*,src.DB" %>
<%@ page import="javax.swing.JOptionPane"%>

<html>
	<head>
		<title></title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("gb2312");
			String name=request.getParameter("cname");
			String password=request.getParameter("password");
			String againPassword=request.getParameter("spw");
			String Email=request.getParameter("email");
			
			if(password.equals(againPassword))
			{
	
				String sql="insert into customer values('"+name+"','"+password+"','"+Email+"',1);";
				Exception f;
				f=DB.insertUserInfo(sql);

		%>
		<script LANGUAGE="JAVASCRIPT">
		alert("注册成功");
		window.location.href="presentation.jsp";  
		</script>
		<%
		}
		else
		{
		
		%>
		<script LANGUAGE="JAVASCRIPT">
			alert("密码不一致！！");
			window.location.href="register.jsp";  
		</script>
		<%
		}
		%>
	</body>
</html>		