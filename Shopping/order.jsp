<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.util.*,src.DB"%>

<html>
<head>
<title>用户登录</title>
</head>
<body style="background:url('img/top/bg.gif')">
	<%
		String name=(String)session.getAttribute("user");
		if(name==null)
		{
	%>
	<jsp:forward page="login.jsp" >
		<jsp:param name="age" value="29"/>
	</jsp:forward>
	<%
		}
	%>
	<%
		Vector<String[]> vv = new Vector<String[]>();
		String sql="SELECT * FROM orderInfo where name='"+name+"';";
		
		vv=DB.getMessage(sql);
		
	%>
	
	
<center>
<table border="0" width="800" style="border:1px solid #6daafc">
  <tr>
    <td>
	
		<table border="0" width="100%">
	
		<th>用户名</th>
		<th>收件人</th>
		<th>地址</th>
		<th>联系电话</th>
		<th>总钱数</th>
		<th>购买时间</th>
		<th>购买商品</th>
		<th>删除</th>
		
			<%if(vv.size()==0)
			{
				out.println("数据库中没有商品信息可以显示！！");
			}
			else
			{
			
				for(int i=0;i<vv.size();i++)
				{
					String[] str = vv.get(i);
					Vector<String[]> vv1 = new Vector<String[]>();
					String sql1="SELECT * FROM orderMeg where oid="+str[0]+";";
					
					vv1=DB.getMessage(sql1);
			%>
			
		<tr>
			
			<td><%=str[1]%></td>
			<td><%=str[2]%></td>
			<td><%=str[3]%></td>
			<td><%=str[4]%></td>
			<td><%=str[5]%></td>
		
			<td><%=str[7]%></td>
			<td>
			<%
				for(int j=0;j<vv1.size();j++)
				{
					String[] str1=vv1.get(j);
					out.println(str1[3]+" ");
				}
			%>
		

			</td>
			<td>
				<form action="userOrderDelete.jsp">
					<input type="hidden" name=id value="<%=str[0]%>"/>
					<input type="submit" value="删除"/>
				</form>
			</td>
			
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
