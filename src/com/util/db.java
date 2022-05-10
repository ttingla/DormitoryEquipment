package com.util;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Random;


import java.sql.SQLException;



import com.util.Constant;


public class db {
	// private String dbDriver="com.microsoft.jdbc.sqlserver.SQLServerDriver";
	 //private String sConnStr = "jdbc:microsoft:sqlserver://localhost:3306;databasename=s2shsyzxsbzyglxthsg203859"; 
	 
	 private String dbDriver="com.mysql.jdbc.Driver";
	 private String sConnStr = "jdbc:mysql://localhost:3306/s2shsyzxsbzyglxthsg203859?useUnicode=true&amp;amp;amp;amp;amp;characterEncoding=gb2312"; 
	
	 // private String dbDriver="net.sourceforge.jtds.jdbc.Driver";
	// private String sConnStr = "jdbc:jtds:sqlserver://127.0.0.1:3306;databaseName=s2shsyzxsbzyglxthsg203859"; 
	 
	
	 private String date=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
	 private List list;
	  public Connection connect = null;
	  public ResultSet rs=null;
	  public String nsa="sa";
	  public String nmm="sa123456";
	  public db() {
	    try {
	      Class.forName(dbDriver).newInstance(); 
	    }
	    catch (Exception ex) {
	      System.out.println("12121");
	    }
	  }
	
	  
	  public ResultSet executeQuery(String sql) {
			try{
				connect=DriverManager.getConnection(sConnStr,nsa,nmm);
				Statement stmt=connect.createStatement();
				rs=stmt.executeQuery(sql);
			}catch(SQLException ex){
				System.err.println(ex.getMessage());
			}
			return rs;
		}
	  
	  
	  public String hsggetoption(String ntable,String nzd){
			StringBuffer imgStr = new StringBuffer();
			imgStr.append("");
			
			String sql="";
			sql="select "+nzd+" from "+ntable+" order by id desc";
			System.out.print(sql);
			try{
				connect=DriverManager.getConnection(sConnStr,nsa,nmm);
				Statement stmt=connect.createStatement();
				rs=stmt.executeQuery(sql);
			
				while(rs.next()){
					imgStr.append("<option value='"+rs.getString(1)+"'>"+rs.getString(1)+"</option>\n");
				}
				return imgStr.toString();
			}catch(Exception e){
				e.printStackTrace();
				return imgStr.toString();
			}
		}
	  public String hsggetoption2(String ntable,String nzd){
			StringBuffer imgStr = new StringBuffer();
			imgStr.append("");
			imgStr.append("<option value=''>��ѡ��</option>\n");
			
			String sql="";
			sql="select "+nzd+" from "+ntable+" order by id desc";
			try{
				connect=DriverManager.getConnection(sConnStr,nsa,nmm);
				Statement stmt=connect.createStatement();
				rs=stmt.executeQuery(sql);
				while(rs.next()){
					imgStr.append("<option value='"+rs.getString(1)+"'>"+rs.getString(1)+"</option>\n");
				}
				return imgStr.toString();
			}catch(Exception e){
				e.printStackTrace();
				return imgStr.toString();
			}
		}
	  public String hsggetoptiond(String ntable,String nzd,String nwbk){
			StringBuffer imgStr = new StringBuffer();
			imgStr.append("");
			
			String sql="";
			sql="select "+nzd+" from "+ntable+" order by id desc";
			System.out.print(sql);
			try{
				connect=DriverManager.getConnection(sConnStr,nsa,nmm);
				Statement stmt=connect.createStatement();
				rs=stmt.executeQuery(sql);
				while(rs.next()){
					imgStr.append("<a onClick=\"hsgxia2shxurxu('"+rs.getString(1)+"','"+nwbk+"')\" style='cursor:pointer'>"+rs.getString(1)+"</a>\n");
				}
				return imgStr.toString();
			}catch(Exception e){
				e.printStackTrace();
				return imgStr.toString();
			}
		}
	  
	  public List getPinglunlist(String nbiao,String nid,int hsgzds){
			
			
			try{
				connect=DriverManager.getConnection(sConnStr,nsa,nmm);
				Statement stmt=connect.createStatement();
				list = new ArrayList();
				rs = stmt.executeQuery("select * from t_pinglun where biao='"+nbiao+"' and xinwenID='"+nid+"' order by id desc"); 
				
				
				while(rs.next()){
					List list2=new ArrayList();
					
					for (int hsgt=1;hsgt<=hsgzds;hsgt++)
						{
	                    list2.add(rs.getString(hsgt));
	    				
						}
						
				
					list.add(list2);
				}
				return list;
			}catch(Exception e){
				e.printStackTrace();
				return list;
			}
		}
	  
	  public int hsgexecute(String sql){
			
			int i=0;
			try{
				 
				 connect=DriverManager.getConnection(sConnStr,nsa,nmm);
					Statement stmt=connect.createStatement();
					i = stmt.executeUpdate(sql);
				if(i == 1){
					return i;
				}
				else{
					return i;
				}
			}catch(Exception e){
				e.printStackTrace();
				return Constant.SYSTEM_ERROR; 
			}
		}
	//��ѯ��
		public List hsgselect(String sql,int hsgzds){
			
			
			list = new ArrayList();
			
			try{
				 connect=DriverManager.getConnection(sConnStr,nsa,nmm);
					Statement stmt=connect.createStatement();
				rs = stmt.executeQuery(sql); 
				while(rs.next()){
					List list2=new ArrayList();
					
					for (int hsgt=1;hsgt<=hsgzds;hsgt++)
						{
	                    list2.add(rs.getString(hsgt));
	    				
						}
						
				
					list.add(list2);
				}
				return list;
			}catch(Exception e){
				e.printStackTrace();
				return list;
			}
		}
	  public synchronized static String getID() {
			
			Random random = new Random();
			StringBuffer ret = new StringBuffer(20);
			java.util.Date date = new java.util.Date();
			java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("MMddHHmmss", java.util.Locale.CHINA);
			ret.append(format.format(date));
			String rand = String.valueOf(Math.abs(random.nextInt()));
			//ret.append(getDateStr());
			ret.append(rand.substring(0,4));
			
			return ret.toString();
		} 
	  
	  public static int getBetweenDayNumber(String dateA, String dateB) {
			long dayNumber = 0;
			//1Сʱ=60����=3600��=3600000
			long mins = 60L * 1000L;
			//long day= 24L * 60L * 60L * 1000L;��������֮��
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm");
			try {
			   java.util.Date d1 = df.parse(dateA);
			   java.util.Date d2 = df.parse(dateB);
			   dayNumber = (d2.getTime() - d1.getTime()) / mins;
			} catch (Exception e) {
			   e.printStackTrace();
			}
			return (int) dayNumber;
		}
	  
	  public List getShouyebht(){
			String sql = "select id,biaoti,shouyetupian from t_xinwentongzhi where shouyetupian<>'' and shouyetupian  like '%.jpg' order by id desc";
			list = new ArrayList();
			try{
				connect=DriverManager.getConnection(sConnStr,nsa,nmm);
				Statement stmt=connect.createStatement();
				rs=stmt.executeQuery(sql);
			
				while(rs.next()){
					List list2=new ArrayList();
					list2.add(rs.getString(1));
					list2.add(rs.getString(2));
					list2.add(rs.getString(3));

					
					list.add(list2);
				}
				return list;
			}catch(Exception e){
				e.printStackTrace();
				return list;
			}
		}
		
		//��ȡ�������
		public List getxwlb(){
			String sql = "select distinct(leibie) as ss from t_xinwentongzhi";
			list = new ArrayList();
			try{
				connect=DriverManager.getConnection(sConnStr,nsa,nmm);
				Statement stmt=connect.createStatement();
				rs=stmt.executeQuery(sql);
				while(rs.next()){
					List list2=new ArrayList();
					list2.add(rs.getString(1));
					list.add(list2);
				}
				return list;
			}catch(Exception e){
				e.printStackTrace();
				return list;
			}
		}
		
		
		
		
		
		public String readzd(String ntable,String nzd,String tjzd,String tjz){
			String sql = "select "+nzd+" from "+ntable+" where "+tjzd+"='"+tjz+"' ";
			
			try{
				
				connect=DriverManager.getConnection(sConnStr,nsa,nmm);
				Statement stmt=connect.createStatement();
				rs=stmt.executeQuery(sql);
				rs.next();
				String dir = rs.getString(1);
				return dir;
			}catch(Exception e){
				e.printStackTrace();
				return null;
			}
		}
		
		//��ȡ��ǰʱ��
		public String getdate(){
			String tt=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
			return tt;
		}
		public String gettime(){
		  String tt=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(Calendar.getInstance().getTime());
			return tt;
		}
		
		public synchronized static String ensubStr(Object source,int length) {
			String msource = db.filterStrIgnoreCase(source.toString(), "<", ">");
			if(msource.length()>length)
			{
				msource=msource.substring(0,length)+"...";
			} 
			return msource;
		} 
		public static String filterStrIgnoreCase(String source, String from, String to){
	        String sourceLowcase=source.toLowerCase();
	        String sub1,sub2,subLowcase1,subLowcase2;
	        sub1=sub2=subLowcase1=subLowcase2="";
	        int start=0,end;
	        boolean done=true;
	        if(source==null) return null;
	        if(from==null||from.equals("")||to==null||to.equals("")) 
	         return source;
	        while(done){
	         start=sourceLowcase.indexOf(from,start);
	         if(start==-1) {
	          break;
	         }
	         subLowcase1=sourceLowcase.substring(0,start);
	         sub1=source.substring(0,start);
	         end=sourceLowcase.indexOf(to,start);
	         if(end==-1){
	          end=sourceLowcase.indexOf("/>",start); 
	          if(end==-1) {
	           done=false;
	          }
	         }
	         else{
	          end=end+to.length();
	          subLowcase2=sourceLowcase.substring(end,source.length());
	          sub2=source.substring(end,source.length());
	          sourceLowcase=subLowcase1+subLowcase2;
	          source=sub1+sub2;
	         }
	         //System.out.println(start+" "+end);
	        }
	        return source;
	   }
}

