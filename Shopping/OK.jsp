<%@ page contentType="text/html;charset=gb2312" language="java"%>
<%@ page import="java.util.*,src.Goods"%>
<%@ page import ="java.util.*,src.DB,java.util.Calendar"%>
<%@ page import="javax.swing.JOptionPane"%>

<html>
  <head>
   <jsp:useBean id="handlePage" class="src.Goods" scope="session"/>
  </head>
  <body style="background:url('img/top/bg.gif')">
  
  
		<%
			int i=0;
			application.setAttribute("counter",String.valueOf(++i));
		%>
		
		<%
			String name=(String)session.getAttribute("user");
			String lianxi=request.getParameter("lianxi");
			String lianxiTel=request.getParameter("tele");
			String address=request.getParameter("adds");
			String youbian=request.getParameter("youbian");
			Vector<String[]> aa=(Vector<String[]>) session.getAttribute("vv");
			
			Calendar c = Calendar.getInstance();
			int year = c.get(Calendar.YEAR); 
			int month = c.get(Calendar.MONTH)+1; 
			int date1 = c.get(Calendar.DATE); 
			String time=year+"-"+month+"-"+date1;
			
			String k=(String)application.getAttribute("counter");
			
			String money=handlePage.getAccount();
			
			String sql="insert into orderInfo values(null,'"+name+"','"+lianxi+"','"+address+"','"+lianxiTel+"','"+money+"','1','"+time+"');";
			
			Exception f;
			f=DB.insertUserInfo(sql);
			
			
			
			Vector<String[]> vv = new Vector<String[]>();
			sql="SELECT * FROM orderInfo";
			vv=DB.getMessage(sql);
			if(vv.size()>=1)
			{
				String[] ss=vv.get(vv.size()-1);
				k=ss[0];
			}
			
			String[] tempID=new String[100];
			
			Vector<String[]> numTemp =new Vector<String[]>();
			
			int p=0;
			for(String[] str:aa)
			{	
				
				String id=str[0];
				String num=str[3];
				String goodsNm=str[1];
				
				
				sql="select * from goodsMessage where goodsId="+id+";";
				numTemp=DB.getMessage(sql);
				for(String[] ss:numTemp)
				{
					if(ss[0].equals(id))
					{
						ss[3]=Integer.parseInt(ss[3])-Integer.parseInt(num)+"";
						String updatesql="update goodsMessage set goodsNum='"+ss[3]+"' where goodsId="+ss[0]+";";
						DB.insertUserInfo(updatesql);
					}
				}
				String sql1="insert into orderMeg values("+k+","+id+","+num+",'"+goodsNm+"');";
			
				f=DB.insertUserInfo(sql1);
				tempID[p]=new String();
				tempID[p]=id;
				p++;
				
		
			}
			for(int j=0;j<p;j++)
				handlePage.delete(tempID[j]);
		
			
		%>
		
		<script LANGUAGE="JAVASCRIPT">
		alert("订单成功");
		window.location.href="presentation.jsp";  
		</script>
	
		
  </body>
</html>