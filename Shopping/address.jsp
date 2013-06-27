<%@ page contentType="text/html;charset=gb2312" language="java"%>
<%@ page import="java.util.*,src.Goods"%>
<html>
  <head>
    
  </head>
  <body style="background:url('img/top/bg.gif')">
	
		<form action="OK.jsp" method="post" id="address" >	
			联系人：<br/>
			<input type="text" name="lianxi"><hr/>
			联系人电话：<br/>
			<input type="text" name="tele"><hr/>
			地址：<br/>
			<input type="text" name="adds"><hr/>
			邮编：<br/>
			<input type="text" name="youbian"><hr/>
			付款方式：<br/>
			<table>
				<td><input type="radio" name="pay" value="1">货到后付款</td>
				<td><input type="radio" name="pay" value="2">网上银行</td>
			</table>
			<input type="submit" value="提交"/>
			<a href="card.jsp"><img border="0" id="fh"
			    src="img/dlfh/fh1.png" style="cursor:hand" /></a>
		</form>	
  </body>
</html>