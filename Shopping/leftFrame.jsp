<%@ page contentType="text/html;charset=gb2312"%>

<html>

<head>
</head>
<body style="background:url('img/top/bg.gif')">
<form action="searchPage.jsp" name="searchs" method="post" target="mainFrame" id="searchsF">
  <table width="100%" border="0" height="40" style="background:url(img/sear.gif) no-repeat">
  	<tr>
  	  <td width="118">&nbsp;<input name="searchthings" id="searchthings" 
  	  	 size="11" style="border:0" /></td>
  	  <td align="center"><input name="action" type="hidden" value="searchthing">
  	  <td>
		<input type="submit" value="����" size="5" background="red"/>
  	  </td>
  	</tr>	      	
  </table>
</form>
<center>
	<form action="CustomerServlet" method="post" id="mf" target="mainFrame">
	  <input type="hidden" name="action" value="search"/>
	  <input type="hidden" name="gtype" id="mf_gtype" value="ͼ��"/>
	</form>
	<table background="#FFFF00">	
			<tr>
				<td align="center" >
					<a href="book.jsp" target="mainFrame" ><img src="img/fav.gif" align="left" border="0"/>ͼ��</a><br/>
					<a href="DVDPage.jsp" target="mainFrame"><img src="img/fav.gif" align="left" border="0"/>����</a><br/>
					<a href="ClosePage.jsp" target="mainFrame"><img src="img/fav.gif" align="left" border="0"/>��װ</a><br/>
					<a href="foodPage.jsp" target="mainFrame"><img src="img/fav.gif" align="left" border="0"/>ʳƷ</a><br/>
					<a href="earPage.jsp" target="mainFrame"><img src="img/fav.gif" align="left" border="0"/>�ֻ�</a><br/>
					<a href="camera.jsp" target="mainFrame"><img src="img/fav.gif" align="left" border="0"/>���</a><br/>
					<a href="wenju.jsp" target="mainFrame"><img src="img/fav.gif" align="left" border="0"/>�ľ�</a><br/>
				</td>
			</tr>			
	</table>
</center>
</body>
</html>