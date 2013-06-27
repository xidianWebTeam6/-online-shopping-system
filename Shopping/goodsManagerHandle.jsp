<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.*,src.DB"%>
<%@ page import="javax.swing.JOptionPane"%>
<%@ page import ="java.util.*,src.DB,java.util.Calendar"%>

<html><head>
<title>管理员添加</title>

</head>     
<body style="background:url('img/top/bg.gif')">
	<%
		String name=(String)request.getParameter("goodsname");
		String gtype=(String)request.getParameter("gtype");
		String gprice=(String)request.getParameter("gprice");
		String gamount=(String)request.getParameter("gamount");
		String Gimgurl=(String)request.getParameter("Gimgurl");
		String gintroduction=(String)request.getParameter("gintroduction");
		String time;
		Calendar c = Calendar.getInstance();
		int year = c.get(Calendar.YEAR); 
		int month = c.get(Calendar.MONTH)+1; 
		int date1 = c.get(Calendar.DATE); 
		time=year+"-"+month+"-"+date1;
	
		String sql="insert into goodsMessage values(null,'"+name+"','"+gtype+"','"+gprice+"','"+time+"','"+gamount+"','"+Gimgurl+"','"+gintroduction+"');";
		Exception f;
		f=DB.insertUserInfo(sql);
		out.println(f);
		JOptionPane.showMessageDialog( null,"货物加入成功!");
	%>
	<jsp:forward page="goodsManager.jsp">
			<jsp:param name="" value=""/>
	    </jsp:forward>
</body>
</html>
