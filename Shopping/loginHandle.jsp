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
			String name=request.getParameter("loginname");
			String password=request.getParameter("loginpassword");
			
			
			Vector<String[]> vv = new Vector<String[]>();
			String sql="SELECT * FROM customer";
			vv=DB.getMessage(sql);
			if(vv.size()==0)
			{
				JOptionPane.showMessageDialog( null,"数据库中没有客户信息可以显示！！");
			}
			else
			{
				for(int i=0;i<vv.size();i++)
				{
					String[] str = vv.get(i);
					if(str[0].equals(name) && str[1].equals(password))
					{
					
					session.setAttribute("user",name);
				
					%>
					
						<jsp:forward page="presentation.jsp">
							<jsp:param name="" value=""/>
						</jsp:forward>
				<%
					}
				}
				

			}
			
				%>
				
				<script LANGUAGE="JAVASCRIPT">
				alert("请先注册！！！");
				window.location.href="login.jsp";  
				</script>
				
		
	</body>
</html>		