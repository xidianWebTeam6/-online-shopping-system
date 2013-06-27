<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.*,src.DB"%>

<html>
  <head>
	
  </head>
<body style="background:url('img/top/bg.gif')">
<center>

<table border="0" width="800" style="border:1px solid #6daafc">
  <tr>
    <td>
	
		<table border="0" width="100%">
	
		<th>商品的名字：</th>
		<th>商品的评论：</th>
		
		
		<%
	String view=(String)request.getParameter("goods");
	Vector<String[]> vv = new Vector<String[]>();
	String sql="SELECT * FROM comments;";
		
	vv=DB.getMessage(sql);
	%>
	
	<%if(vv.size()==0)
	{
		out.println("数据库中没有商品信息可以显示！！");
	}
	else
	{
			
		for(int i=0;i<vv.size();i++)
		{
			String[] str = vv.get(i);
			%>
			
			
			
		<tr align="center">
			
			<td><%=str[0]%></td>
			<td><%=str[1]%></td>
			
			
			
		</tr>
		<%
		}}
		%>
		</table>
			
    </td>
  </tr>
</table>
</center>
</body>
</html>