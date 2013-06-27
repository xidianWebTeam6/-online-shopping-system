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
			String name1=request.getParameter("rename");
			String oldpassword=request.getParameter("oldpd");
			String newpassword=request.getParameter("newpd");
			
			Vector<String[]> vv = new Vector<String[]>();
			String sql="SELECT * FROM customer";
			vv=DB.getMessage(sql);
			if(vv.size()==0)
			{
				JOptionPane.showMessageDialog( null,"数据库中没有信息！！");
			}
			else
			{
				for(int i=0;i<vv.size();i++)
				{
					String[] str = vv.get(i);
					if(str[0].equals(name1) && str[1].equals(oldpassword))
					{
						sql="update customer set password='"+newpassword+"'where name='"+name1+"';";
						Exception f;
						f=DB.insertUserInfo(sql);
					
					%>
						<script LANGUAGE="JAVASCRIPT">
						alert("密码修改成功！！");
						window.location.href="resetPassword.jsp";  
						</script>
					<%
					}
				}
				

			}
		%>
		
	</body>
</html>		