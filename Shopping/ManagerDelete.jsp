<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.*,src.DB"%>

<html>
  <head>
  </head>
<body style="background:url('img/top/bg.gif')">
<center>

<br><br>
<table border="0" width="500" style="border:1px solid #6daafc" align="center">
  <tr>
    <td>
		<table border="0" align="center" width="100%" bgcolor="black" cellspacing="1">
		<caption style="font-size:1.5em;font-weight:bold">����Ա����</caption>
          <tr>
		    <th bgcolor="#d2e9ff">����Ա��</th>
		    <th bgcolor="#d2e9ff">����Ա����</th>
		    <th bgcolor="#d2e9ff">����ԱȨ��</th>
		    <th bgcolor="#d2e9ff">ɾ��</th>           
          </tr> 
		<%
			Vector<String[]> vv = new Vector<String[]>();
			String sql="SELECT * FROM manager";
			vv=DB.getMessage(sql);
			if(vv.size()==0)
			{
				out.println("���ݿ���û����Ʒ��Ϣ������ʾ����");
			}
			else
			{
				
				for(int i=0;i<vv.size();i++)
				{
					String[] str = vv.get(i);
		%>
  	  
	       <tr align='center'>
	       		<td bgcolor="#d2e9ff"><%=str[0]%></td>
	       		<td bgcolor="#d2e9ff"><%=str[1]%></td>
	       		<td bgcolor="#d2e9ff"><%=str[2]%></td>
	       		<form action="ManagerDeleteHandle.jsp">
	       		  <td width="100" align="center" bgcolor="#d2e9ff">
				    <input type="submit" value="ɾ��"/>
				    <input type="hidden" name="mname" value="<%=str[0]%>"/>
				    <input type="hidden" name="action" value="mandelete"/>
				  </td>	
	       		</form>
	      </tr>
		  <%
		  }}
		  %>
       
		</table>
		</td>
		</tr>
        <tr>
        	<td bgcolor="#d2e9ff" align="center">
          	<a href="Welcome.jsp">
		        	<img border="0" id="qd"
					    	 src="img/dlfh/qd1.gif" style="cursor:hand" />
					  </a>
        	</td>
        </tr>
		</table>         
    </center>
  </body>
</html>

