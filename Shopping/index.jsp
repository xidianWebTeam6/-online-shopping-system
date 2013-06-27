<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.*"%>
<html>
<head>
<title>网上购物广场</title>
</head>
<frameset rows="20%,*"> 
	<frame name="topFrame" scrolling="NO" noresize width="20%" src="top.jsp" >
	<frameset cols="18%,*"> 
		<frame name="leftFrame" scrolling="no" noresize src="leftFrame.jsp">
		<frame name="mainFrame" scrolling="YES" src="presentation.jsp">
	</frameset>
</frameset>
<body>

</body>
</html>