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
          alert("ȱ����Ʒ���ܹ���");
       }
   }
 
</script>
</head>
<body style="background:url('img/top/bg.gif')">
	<%
		Vector<String[]> vv = new Vector<String[]>();
	
		String sql="select * from goodsMessage where goodsType ='book'";
		vv=DB.getMessage(sql);
	%>
	<table>
	<!--��һ��-->
	<tr>
	<%if(vv.size()==0)
	{
		out.println("���ݿ���û����Ʒ��Ϣ������ʾ����");
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
		<tr><td>����:<%= str[1] %></td></tr>
		<tr><td>��Ʒ����:<%= str[2] %></td></tr>
		<tr><td></td></tr>
		<tr><td></td></tr>
		
		</table>
		</td>
		
	
	<% 
 	}}
   %>
  </tr>
	<!--�ڶ���-->
	
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
		<tr><td>��Ʒ:<%= str[1] %></td></tr>
		<tr><td>��Ʒ����:<%= str[2] %></td></tr>
		<tr><td></td></tr>
		<tr><td></td></tr>
		
		</table>
		</td>
	
	<% 
 	}}
   %>
  </tr>
  
  <!--������-->
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
		<tr><td>����:<%= str[1] %></td></tr>
		<tr><td>��Ʒ��Ϣ:<%= str[2] %></td></tr>
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