<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.util.*,src.DB"%>

<html>
<head>
<title>所有订单列表</title>
</head>
<body style="background:url('img/top/bg.gif')">
	<%
	String name=(String)session.getAttribute("Manager");
	if(name==null)
	{
%>
		<script LANGUAGE="JAVASCRIPT">
		alert("请先登录！！！");
		window.location.href="ManagerLogin.jsp";  
		</script>
<%
	}
%>

	<%
		Vector<String[]> vv = new Vector<String[]>();
		String sql="SELECT * FROM orderInfo where state='0'";
		
		vv=DB.getMessage(sql);
		
	%>
	
	
<center>
<table border="0" width="800" style="border:1px solid #6daafc">
  <tr>
    <td>
	
		<table border="0" width="100%">
		<th>订单号</th>
		<th>用户名</th>
		<th>收件人</th>
		<th>地址</th>
		<th>联系电话</th>
		<th>总钱数</th>
		<th>购买时间</th>
		<th>购买商品</th>
		
			<%
			
			
				for(int i=0;i<vv.size();i++)
				{
					String[] str = vv.get(i);
					Vector<String[]> vv1 = new Vector<String[]>();
					String sql1="SELECT * FROM orderMeg where oid="+str[0]+";";
					
					vv1=DB.getMessage(sql1);
			%>
			
		<tr>
			<td><%=str[0]%></td>
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
			
		</tr>
		<%
		}
		%>
		</table>
			
    </td>
  </tr>
</table>
</center>
 </body>
</html>
