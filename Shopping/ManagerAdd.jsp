<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.*"%>
<html><head>
<title>����Ա���</title>

</head>     
<body style="background:url('img/top/bg.gif')">
<br><br>
<table border="0" width="700" style="border:1px solid #6daafc" align="center">
  <tr>
    <td>
		<table border="0" align="center">
			<caption style="font-size:1.5em;font-weight:bold">��ӹ���Ա</caption>
			<tr>
			<td>			
			<form action="ManagerAddHandle.jsp" name="aform" method="post">
				<table border="0">
				<tr>
					<td align="right">����д����Ա��</td>
					<td><input name="mname" type="text" id="mname" /></td>
					<td id="minfo"><font color="blue" size="2px">����Ա��������СдӢ����ĸ�����ġ�������ɡ�</font></td>
				</tr>
				<tr>
					<td align="right">����д����</td>
					<td><input name="mpassword" type="password" id="mpassword" /></td>
					<td id="mpinfo"><font color="blue" size="2px">���������СдӢ����ĸ��������ɣ�Ҫ����6λС��15λ��</font></td>
				</tr>
				<tr>
					<td align="right">���ٴ���������</td>
					<td><input name="mpw" type="password" id="mpw" /></td>
					<td id="mpsinfo"><font color="blue" size="2px">���������СдӢ����ĸ��������ɣ�Ҫ����6λС��15λ��</font></td>
				</tr>
				<tr>
					<td align="right">��ѡ�����ԱȨ��</td>
					<td><select  name="quanxian" id="quanxian" style="width:155;">
								<option selected value="putong">��ͨ
						        <option value="chaoji">����
						</select></td>
					<td id="qxinfo"><font color="blue" size="2px">Ȩ�޿���Ϊ'��ͨ'��'����'��</font></td>
				</tr>
				</table>
				<table border="0" align="center">
				<tr align="center">
					<td><input name="tianjia" type="submit" value="���" />
					
					<td>
						<input type="reset" id="zhuce" name="zhuce" value="����"/>
					</td>
				</tr>
				</table>
			</form>
			</td>
			</tr>
			</table>
		</td>
	</tr>
</table>
</body>
</html>
