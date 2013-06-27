<%@ page contentType="text/html;charset=gb2312"%>

<%@ page import="java.util.*,src.DB"%>

<html>
<head>
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
		Vector<String[]> vv = new Vector<String[]>();
		String a=request.getParameter("searchthings");
	
		String sql="select * from goodsMessage where goodsName like '%"+a+"%'";
		vv=DB.getMessage(sql);
	%>
	<table>
	<!--第一行-->
	<tr>
	<%if(vv.size()==0)
	{
		out.println("数据库中没有商品信息可以显示！！");
	}
	else
	{
		int temp;
		if(vv.size()<=4)
			temp=vv.size();
		else
			temp=4;
		for(int i=0;i<temp;i++)
		{
			String[] str = vv.get(i);
			
	%>
 	  <td>
		<form action="detailedInfo.jsp" method="post" id="mf<%= i %>" >	
			    <img border="0" src="<%= str[6] %>" id="im" 
			     onclick="submitBuy(document.getElementById('mf<%= i %>'),<%= str[5] %>);"
			     style="cursor:hand" height="150" width="120"/>
			     
			    <input type="hidden" name="goodsName" value="<%= str[1] %>">
			    <input type="hidden" name="goodsPrice" value="<%= str[3] %>">
			    <input type="hidden" name="goodsType" value="<%= str[2] %>">
			    <input type="hidden" name="goodsId" value="<%= str[0] %>">
				<input type="hidden" name="goodsDate" value="<%= str[4] %>">
				<input type="hidden" name="goodsNum" value="<%= str[5] %>">
				<input type="hidden" name="goodsurl" value="<%= str[6] %>">
				<input type="hidden" name="goodsIntroduction" value="<%= str[7] %>">
		</form>
 	  </td>
 	  <td>
 	    <table width="100%">
 	    <tr><td></td></tr> 	 
		<tr><td></td></tr>		
		<tr><td>名称:<%= str[1] %></td></tr>
		<tr><td>商品类型:<%= str[2] %></td></tr>
		<tr><td></td></tr>
		<tr><td></td></tr>
		
		</table>
		</td>
		
	
	<% 
 	}}
   %>
  </tr>
	<!--第二行-->
	
  <tr>
	<%if(vv.size()==0)
	{
		
	}
	else
	{
		int temp=vv.size()-4;
		if(temp<=0)
			temp=0;
		else if(temp>4)
			temp=4;
		for(int i=0;i<temp;i++)
		{
			String[] str = vv.get(i+4);
	%>
 	
 	  <td>
 	  		<form action="detailedInfo.jsp" method="post" id="mf<%= i+4 %>" >	
			    <img border="0" src="<%= str[6] %>" id="im" 
			     onclick="submitBuy(document.getElementById('mf<%= i+4 %>'),<%= str[5] %>);"
			     style="cursor:hand" height="150" width="120"/>
			     
			    <input type="hidden" name="goodsName" value="<%= str[1] %>">
			    <input type="hidden" name="goodsPrice" value="<%= str[3] %>">
			    <input type="hidden" name="goodsType" value="<%= str[2] %>">
			    <input type="hidden" name="goodsId" value="<%= str[0] %>">
				<input type="hidden" name="goodsDate" value="<%= str[4] %>">
				<input type="hidden" name="goodsNum" value="<%= str[5] %>">
				<input type="hidden" name="goodsurl" value="<%= str[6] %>">
				<input type="hidden" name="goodsIntroduction" value="<%= str[7] %>">
		</form>
 	  </td>
 	  <td>
 	    <table width="100%">
 	    <tr><td></td></tr> 	 
		<tr><td></td></tr>		
		<tr><td>商品:<%= str[1] %></td></tr>
		<tr><td>商品类型:<%= str[2] %></td></tr>
		<tr><td></td></tr>
		<tr><td></td></tr>
		
		</table>
		</td>
	
	<% 
 	}}
   %>
  </tr>
  
  <!--第三行-->
    <tr>
	<%if(vv.size()==0)
	{
		
	}
	else
	{
		int temp=vv.size()-8;
		if(temp<=0)
			temp=0;
		else if(temp>4)
			temp=4;
		for(int i=0;i<temp;i++)
		{
			String[] str = vv.get(i+8);
	%>
 	
 	  <td>
 	  		<form action="detailedInfo.jsp" method="post" id="mf<%= i+8 %>" >	
			    <img border="0" src="<%= str[6] %>" id="im" 
			     onclick="submitBuy(document.getElementById('mf<%= i+8 %>'),<%= str[5] %>);"
			     style="cursor:hand" height="150" width="120"/>
			     
			    <input type="hidden" name="goodsName" value="<%= str[1] %>">
			    <input type="hidden" name="goodsPrice" value="<%= str[3] %>">
			    <input type="hidden" name="goodsType" value="<%= str[2] %>">
			    <input type="hidden" name="goodsId" value="<%= str[0] %>">
				<input type="hidden" name="goodsDate" value="<%= str[4] %>">
				<input type="hidden" name="goodsNum" value="<%= str[5] %>">
				<input type="hidden" name="goodsurl" value="<%= str[6] %>">
				<input type="hidden" name="goodsIntroduction" value="<%= str[7] %>">
		</form>
 	  </td>
 	  <td>
 	    <table width="100%">
 	    <tr><td></td></tr> 	 
		<tr><td></td></tr>		
		<tr><td>名称:<%= str[1] %></td></tr>
		<tr><td>商品信息:<%= str[2] %></td></tr>
		<tr><td></td></tr>
		<tr><td></td></tr>
		
		</table>
		</td>
	
	<% 
 	}}
   %>
  </tr>
   </table>
</body>
</html>