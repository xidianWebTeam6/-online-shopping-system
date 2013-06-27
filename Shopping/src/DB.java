package src;
import java.sql.*;
import java.util.*;
import javax.sql.*;
import javax.naming.*;


public class DB
{
	public static Exception insertUserInfo(String sql)
	{
			try{
			Class.forName("com.mysql.jdbc.Driver");
            		//得到连接
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Shopping","root","640126");
            		//声明语句		
			Statement st = con.createStatement();
			st.executeUpdate(sql);
		
            st.close();
            con.close();
			return null;
			}catch(Exception e)
			{
				e.printStackTrace();
				return e;
			}
			
		
	}
	
	public static Vector<String[]> getMessage(String sql)
	{
		Vector<String[]> vtemp = new Vector<String[]>();
		try
		{
					
					//初始化上下文
					Class.forName("com.mysql.jdbc.Driver");
            		//得到连接
            		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Shopping","root","640126");
            		//声明语句		
					Statement st = con.createStatement();
            		//执行语句得到结果集
            		ResultSet rs = st.executeQuery(sql);
            		//获取结果集的元数据
            		ResultSetMetaData rsmd = rs.getMetaData();
            		//得到结果集中的总列数
            		int count = rsmd.getColumnCount();
					
            		while(rs.next())
            		{
            			String[] str = new String[count];
            			for(int i=0;i<count;i++)
            			{
            				str[i] = rs.getString(i+1);
            				str[i] = new String(str[i].getBytes("ISO-8859-1"),"gb2312");
            			}
            			vtemp.add(str);
            		}
            		rs.close();
            		st.close();
            		con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}
		return vtemp;
	}
	
}