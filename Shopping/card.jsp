<%@ page contentType="text/html;charset=gb2312" language="java"%>
<%@ page import="java.util.*,src.Goods"%>
<%@ page import="javax.swing.JOptionPane"%>

<html>
  <head>
    <style>
      th
      {
        background:#d2e9ff;
      }
      td
      {
        background:#d2e9ff;
      }
    </style>
	<jsp:useBean id="handlePage" class="src.Goods" scope="session"/>
  </head>
  <body style="background:url('img/top/bg.gif')">
 <%
	String user=(String)session.getAttribute("user");
	if(user==null)
	{
%>
		<script LANGUAGE="JAVASCRIPT">
		alert("请先登陆");
		window.location.href="login.jsp";  
		</script>
		
		
		
<%
	
	}
 %>
 

  <%
	Vector<String> allNum=new Vector<String>();
	session.setAttribute("allNum",allNum);
	request.setCharacterEncoding("gb2312");
	String id=request.getParameter("goodsId");
	String name=request.getParameter("goodsName");
	String price=request.getParameter("price");
	
  %>

  <jsp:setProperty name="handlePage" property="id" value="<%=id%>"/>
  <jsp:setProperty name="handlePage" property="name" value="<%=name%>"/>
  <jsp:setProperty name="handlePage" property="price" value="<%=price%>"/>
  
<% 
handlePage.addVector();
if(handlePage.size()==0)
{
%>
<br/><br/>
<table style="background:url('img/top/bg.gif')" align="center">
	<tr>
		<td>
	    <img src="img/png-0405.png"/>
	  </td>
	  <td> 	
	    <b> <style="font-size:1.5em">购物车中没有商品，请先行购买！！！</b>
	  </td>
	</tr>
</table>
<%
}

else
{
	
  
%>
<table width="100%">
    <tr align="center">
        <td>

  <table border="0" width="70%" style="border:1px solid #6daafc" align="center">
  <tr>
    <td style="font-size:1.2em" align="center">
      购物车
    </td>
  </tr>
  <tr>
  <td>  

    <table border="0" width="100%" bgcolor="black" cellspacing="1">
     <tr>
     	<th>商品ID</th>
    	<th>商品名称</th>
    	<th>商品价格</th>
    	<th>商品数量</th>
    	<th>删除</th>
  	</tr>
	<% 
		Vector<String[]> vv = handlePage.getVector();
		session.setAttribute("vv",vv);
		for(String[] a:vv)
		{			

	%>
	   <tr>
		  <td><%= a[0] %></td>
		  <td><%= a[1] %></td>
		  <td  width="100">￥<%= a[2] %></td>
			  <td width="100">
					 <%=a[3]%>
			  </td>	
			 
			  <form action="delete.jsp" method="post">
			  <td width="100" align="center">
			    <input type="hidden" name="goodsid" value="<%= a[0]%>"/>
			    <input type="submit" value="删除"/>
			  </td>	
		 	  </form>	  
		</tr>		
	<%
		}
	 %>
    </table>
    
    </td>
  </tr>
  <tr>
    <td>
      <table width="100%" border="0">
         <tr>
		     <td align="right" colspan="3"><b>商品价格总计:￥<%=handlePage.getAccount()%>元</b></td>
		     <td align="center">
		 
	      	  <td width="100" align="center">
			    <a href ="address.jsp">结账</a>
			  </td>	
		
		      <% 
		      	}
		      %>
		     </td>
		   </tr>
      </table>
    </td>
  </tr>
</table> 

     
    </center>
    <br/>
    <table align="left">
    	<tr>
	    	<td>
	    		<a href="presentation.jsp"><img src="img/left_green.png" border="0"/>继续购买</a>
	    	</td>
        </tr>
    </table>
   
  </body>
</html>