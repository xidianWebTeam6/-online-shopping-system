<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.*,src.DB"%>
<%@ page import="javax.swing.JOptionPane"%>
<%@ page import ="java.util.*,src.DB,java.util.Calendar"%>

<html><head>
<title>管理员添加</title>

</head>     
<body style="background:url('img/top/bg.gif')">
	<%
		String name=(String)request.getParameter("delID");
	
	
	
		String sql="delete from goodsMessage where goodsId='"+name+"';";
		Exception f;
		f=DB.insertUserInfo(sql);
		out.println(f);
		JOptionPane.showMessageDialog( null,"货物删除成功!");
	%>
	<jsp:forward page="goodsDelete.jsp">
			<jsp:param name="" value=""/>
	    </jsp:forward>
</body>
</html>
