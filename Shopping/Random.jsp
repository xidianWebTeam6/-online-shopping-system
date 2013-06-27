<%@ page contentType="im"><%@ page contentType="image/jpeg" %>
<%@ page import="java.awt.*,java.awt.image.*" %>
<%@ page import="java.util.*,javax.imageio.*" %>

<%!  
//���������ɫ����getRandColor
     Color getRandColor(int fc,int bc){
        Random r = new Random();
        if(fc>255) fc=255;
        if(bc>255) bc=255;
        int red=fc+r.nextInt(bc-fc);    //��
        int green=fc+r.nextInt(bc-fc);  //��
        int blue=fc+r.nextInt(bc-fc);   //��
        return new Color(red,green,blue);
     }
%>

<%
//����ҳ�治����
    response.setHeader("Pragma","No-cache");
    response.setHeader("Cache-Control","no-cache");
    response.setDateHeader("Expires", 0);
    
//���������
    Random r = new Random();

// ���ڴ��д���ͼ�񣬿��Ϊwidth���߶�Ϊheight
    int width=60, height=20;
    BufferedImage pic = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);

// ��ȡͼ�������Ļ���
    Graphics gc = pic.getGraphics();

// �趨����ɫ���������
    gc.setColor(getRandColor(200,250));
    gc.fillRect(0, 0, width, height);

//�趨ͼ�������Ļ�������
    gc.setFont(new Font("Times New Roman",Font.PLAIN,18));

// �������200������ֱ�ߣ�ʹͼ���е���֤�벻�ױ�������������̽�⵽
    gc.setColor(getRandColor(160,200));
    for (int i=0;i<200;i++){
        int x1 = r.nextInt(width);
        int y1 = r.nextInt(height);
        int x2 = r.nextInt(15);
        int y2 = r.nextInt(15);
        gc.drawLine(x1,y1,x1+x2,y1+y2);
    }
//�������100�����ŵ㣬ʹͼ���е���֤�벻�ױ�������������̽�⵽
	gc.setColor(getRandColor(120,240));
	for (int i=0;i<100;i++) 
	{
	int x = r.nextInt(width); 
	int y = r.nextInt(height); 
	gc.drawOval(x,y,0,0); 
	} 

// �������4λ���ֵ���֤��
    String RS="";
    String rn="";
    for(int i=0;i<4;i++){
        //����10�����������rn
        rn=String.valueOf(r.nextInt(10));
        RS+=rn;
        //����֤����drawString������ʾ��ͼ����
        gc.setColor(new Color(20+r.nextInt(110),20+r.nextInt(110),20+r.nextInt(110)));
        gc.drawString(rn,13*i+6,16);
    }

// �ͷ�ͼ�������Ļ���
    gc.dispose();

// ����֤��RS����SESSION�й���
    session.setAttribute("random",RS);

// ������ɺ����֤��ͼ��ҳ��
    ImageIO.write(pic, "JPEG", response.getOutputStream());
  
%>