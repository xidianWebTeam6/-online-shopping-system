<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.util.*,src.DB"%>

<html>
<head>
<title>���ж����б�</title>
</head>
<body style="background:url('img/top/bg.gif')">
	<%
	String name=(String)session.getAttribute("Manager");
	if(name==null)
	{
%>
		<script LANGUAGE="JAVASCRIPT">
		alert("���ȵ�¼������");
		window.location.href="ManagerLogin.jsp";  
		</script>
<%
	}
%>

	<%
		Vector<String[]> vv = new Vector<String[]>();
		String sql="SELECT * FROM orderInfo";
		
		vv=DB.getMessage(sql);
		
	%>
	
	
<center>
<table border="0" width="800" style="border:1px solid #6daafc">
  <tr>
    <td>
	
		<table border="0" width="100%">
		<th>������</th>
		<th>�û���</th>
		<th>�ռ���</th>
		<th>��ַ</th>
		<th>��ϵ�绰</th>
		<th>��Ǯ��</th>
		<th>����ʱ��</th>
		<th>������Ʒ</th>
		
			<%if(vv.size()==0)
			{
				out.println("���ݿ���û����Ʒ��Ϣ������ʾ����");
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
		}}
		%>
		</table>
			
    </td>
  </tr>
</table>
</center>
 </body>
</html>
