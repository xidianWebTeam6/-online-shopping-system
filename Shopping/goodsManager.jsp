<%@ page contentType="text/html;charset=gb2312"%>
<html>
<head>
	
	<title>��Ʒ����</title>
	
	
	<script language="javascript">
		function qingkong()
	    {  
	        document.all.goodsname.value="";
	        document.all.gtype.value="";
	        document.all.gprice.value="";
	        document.all.gamount.value="";
	        document.all.Gimgurl.value="";
	        document.all.gintroduction.value="";
	    }
	    function checkAddGoods()
	    {
	   		var goodsname = document.all.goodsname.value.trim();
	   		var gtype = document.all.gtype.value.trim();
	   		var gprice = document.all.gprice.value.trim();
	   		var gdate = document.all.gdate.value.trim();
	   		var gamount = document.all.gamount.value.trim();
	   		var Gimgurl = document.all.Gimgurl.value.trim();
	   		var gintroduction = document.all.gintroduction.value.trim();
	   		var zzs =/^[0-9]{1,6}(\.[0-9]+)*$/;
	   		
	   		if(goodsname=="")
	   		{
	   			alert("��Ʒ���Ʋ���Ϊ�գ���");
	   			return;
	   		}
	   		if(gtype=="")
	   		{
	   			alert("��Ʒ���Ͳ���Ϊ�գ���");
	   			return;
	   		}
	   		if(gprice=="")
	   		{
	   			alert("��Ʒ�۸���Ϊ�գ���");
	   			return;
	   		}
	   		else if(!zzs.test(gprice))
	   		{
	   			alert("��Ʒ�۸��ʽ���ԣ���");
	   			return;
	   	    }
	   		if(gamount=="")
	   		{
	   			alert("��Ʒ��������Ϊ�գ���");
	   			return;
	   		}
	      	if(gintroduction=="")
	   		{
	   			alert("��ʱȱ�ٶԸ���Ʒ�ļ�Ҫ���ܣ���");
	   			return;
	   		}
	   		document.form.submit();
	    }
	</script>
</head>

<body style="background:url('img/top/bg.gif')">



<%
	String str=(String)session.getAttribute("Manager");
	if(str==null)
	{
%>
		<script LANGUAGE="JAVASCRIPT">
		alert("���ȵ�¼������");
		window.location.href="ManagerLogin.jsp";  
		</script>
<%
	}
%>

<form action="goodsManagerHandle.jsp" name="form" method="post">
<table border="0" align="center" style="border:2px solid #6daafc" bgcolor="#d2e9ff">
<tr><td>
<table border="0">
<tr>
  <td align="center" colspan="2" style="font-size:1.2em">
    ��Ʒ��ϸ��Ϣ 
  </td>
</tr>
<tr>
<td colspan="2">
	<table cellpadding="2" bgcolor="#d2e9ff" cellspacing="1" border="0">
	<tr>
	<td bgcolor="#d2e9ff">��Ʒ����</td>
	<td bgcolor="#d2e9ff"><input name="goodsname" id="goodsname" size="60" type="text"></td>
	</tr>
	<tr>
	<td bgcolor="#d2e9ff">��Ʒ����</td>
	<td bgcolor="#d2e9ff"><input name="gtype" id="gtype" size="60" type="text"></td>
	</tr>
	<tr>
	<td bgcolor="#d2e9ff">��Ʒ�۸�</td>
	<td bgcolor="#d2e9ff"><input name="gprice" id="gprice" size="60" type="text"></td>
	</tr>
	<tr>
	<td bgcolor="#d2e9ff">�ϼ�����</td>
	<td bgcolor="#d2e9ff"><input name="gdate" id="gdate" size="60" type="text" value="���Զ�����ϵͳ��ǰʱ�䣡" disabled="false"></td>
	</tr>
	<tr>
	<td bgcolor="#d2e9ff">��Ʒ����</td>
	<td bgcolor="#d2e9ff"><input name="gamount" id="gamount" size="60" type="text"></td>
	</tr>
	<tr>
	<td bgcolor="#d2e9ff">ͼƬURL</td>
	<td bgcolor="#d2e9ff"><input name="Gimgurl" id="Gimgurl" size="60" type="text"></td>
	</tr>
	<tr>
	<td bgcolor="#d2e9ff" rowspan="3">��Ʒ���</td>
	<td bgcolor="#d2e9ff" colspan="5"><textarea style="width:432px;height:70px" cols="60" rows="4" name="gintroduction" id="gintroduction"></textarea></td>
	</tr>
	</table>
</td>
</tr>
<tr>
		<td align="right">
			<input name="action" type="submit" value="add"/>
		</td>
		<td><input name="action" type="reset" value="reset"/></td>
</tr>
</table>
</form>
</td></tr></table>
</body>

</html>
