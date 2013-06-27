<%@ page contentType="text/html;charset=gb2312"%>

<%@ page import="java.util.*,src.DB"%>

<html>
<head>
<style>
	textarea{
		width:400px;
		height:200px;
		color:#00008B;
		background-color:#ADD8E6;
		border:1px inset #cad9ea;
	}
</style>
<script>
   function submitBuy(mf,sl)
   {
       if(sl>0)
       {
          mf.submit();
       }
       else
       {
          alert("缺货商品不能购买！");
       }
   }
 
</script>
</head>
<body style="background:url('img/top/bg.gif')">
	<%
		request.setCharacterEncoding("gb2312");
		String id=request.getParameter("goodsId");
		String name=request.getParameter("goodsName");
		String goodsType=request.getParameter("goodsType");
		String price=request.getParameter("goodsPrice");
		String date=request.getParameter("goodsDate");
		String num=request.getParameter("goodsNum");
		String url=request.getParameter("goodsurl");
		String introduction=request.getParameter("goodsIntroduction");
		
	%>
	
	<table>
 	<tr>
 	  <td>
 	  	  <img style="border:1px solid #6daafc"  src="<%= url %>" id="img" height="250" width="180" />
 	  </td>
 	  <td>
 	    <table width="100%">
 	    <tr><td>商品ID:<%= id %></td></tr> 	  
		<tr><td>名称:<%= name %></td></tr>
		<tr><td>商品类型:<%= goodsType %></td></tr>
		<tr><td>定价:￥<%= price%></td></tr>
		<tr><td>描述:￥<%= introduction%></td></tr>
		<tr>
		  <td>
		     库存数量：<%= num %>      
		  </td>
		  <td>
		  <form action="card.jsp" method="post" id="mf<%= id %>" >	
			<tr>
			<td>
			     <img border="0" src="img/dlfh/gm1.png" id="im" 
			     onclick="submitBuy(document.getElementById('mf<%= id %>'),<%= num%>);"
			     style="cursor:hand" height="150" width="120"/>
			    <input type="hidden" name="goodsName" value="<%= name %>">
			    <input type="hidden" name="price" value="<%= price%>">
			  
			    <input type="hidden" name="goodsId" value="<%= id%>">
			    <input type="hidden" name="action"  value="buy">
			</td>
			</tr>
		</form>
		  </td>
		</tr>
 	    </table> 	  
 	  </td>
		<td>
		 <form action="pingjiaHandle.jsp" method="post" id="评价" >	
			<td>
				评价：
			</td>
			 <td>
				<textarea name="text" col=35 rows=16></textarea>
			</td>
			<td>
				<input type="hidden" value="<%=name%>" name="goodNmes"/>
				<input type="submit" value="提交"/>
			</td>
		 </form>
		 
		 <form action="seeView.jsp">
			<td>
			<input type="submit" value="查看评论" />
			<input type="hidden" value="<%=name%>" name="goods"/>
			</td>
		</form>
		</td>
 	
		
	</tr>
</table>
</body>
</html>