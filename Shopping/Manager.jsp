<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.*"%>
<html>
<head>
<title>购物广场后台</title>
</head>
<frameset rows="20%,*"> 
	<frame name="topFrame" scrolling="NO" noresize width="20%" src="ManagerTop.jsp" >
	<frameset cols="18%,*"> 
		<frame name="leftFrame" scrolling="no" noresize src="ManagerLeft.jsp">
		<frame name="mainFrame" scrolling="YES" src="Welcome.jsp">
	</frameset>
</frameset>
<body>

</body>
</html>