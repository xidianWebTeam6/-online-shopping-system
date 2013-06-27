<%@ page contentType="text/html;charset=gb2312" language="java"%>
<%@ page import="java.util.*,src.Goods"%>
<html>
  <head>
    <jsp:useBean id="handlePage" class="src.Goods" scope="session"/>
  </head>
  <body style="background:url('img/top/bg.gif')">
		<%
			request.setCharacterEncoding("gb2312");
			String num=request.getParameter("num");
			Vector<String> a=(Vector<String> )session.getAttribute("allNum");
			a.add(num);
	
		%>
		<jsp:forward page="card.jsp">
			<jsp:param name="" value=""/>
		</jsp:forward>
  </body>
</html>