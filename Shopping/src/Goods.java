package src;
import java.util.*;

public class Goods
{
	
	 String id;
	 String name;
	 String price;
	 String num=1+"";
	 Vector<String[]> vv =new Vector<String[]>();
	
	public Goods(){}
	
	public synchronized void  setId(String id)
	{
		this.id=id;
	}
	public  void setName(String name)
	{
		this.name=name;
	}
	public  void setPrice(String price)
	{
		this.price=price;
	}
	
	public void addVector()
	{
		
		String[] temp=new String[4];
		temp[0]=new String();
		temp[0]=id;
		temp[1]=new String();
		temp[1]=name;
		temp[2]=new String();
		temp[2]=price;
		temp[3]=new String();
		temp[3]=num;
		
		if(temp[0]!=null && temp[1]!=null&&temp[2]!=null)
		{
				String[] a=null;
				for(String[] temp1:vv)
				{
					
					if(temp1[0].equals(temp[0]))
					{
					
						temp[3]=Integer.parseInt(temp1[3])+1+"";
						a=temp1;
					}
				}
				if(a!=null)
					vv.remove(a);
				vv.add(temp);
			
		}
	}
	
	public  Vector<String[]> getVector()
	{
		return vv;
	}
	
	public int size()
	{
		return vv.size();
	}
	
	public String getAccount()
	{
		double sum=0;
		for(String[] temp:vv)
		{
			sum+=Double.parseDouble(temp[2])*Integer.parseInt(temp[3]);
		}	
		return sum+"";
	}
	
	public void delete(String id)
	{
		String[] temp1=null;
		for(String[] temp:vv)
		{
			if(temp[0].equals(id))
				temp1=temp;
		}	
		if(temp1!=null)
			vv.remove(temp1);
	
	}
}