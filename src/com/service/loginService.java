package com.service;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import org.directwebremoting.WebContext;
import org.directwebremoting.WebContextFactory;
import com.opensymphony.xwork2.ActionSupport;
import com.dao.TAllusersDAO;
import com.dao.TYonghuzhuceDAO;
import com.dao.TYuangongxinxiDAO;//jixacicxhu1
import com.model.TAllusers;
import com.model.TYonghuzhuce;
import com.model.TYuangongxinxi;//jixacicxhu2
import com.util.Pagesize;
import com.util.Pagination;

public class loginService

{
	private TAllusersDAO allusersDAO;
	private TYonghuzhuceDAO yonghuzhuceDAO;
	private TYuangongxinxiDAO yuangongxinxiDAO;	//jixacicxhu3
	
	public TAllusersDAO getAllusersDAO()
	{
		return allusersDAO;
	}
	public void setAllusersDAO(TAllusersDAO allusersDAO)
	{
		this.allusersDAO = allusersDAO;
	}
	
	
	public TYonghuzhuceDAO getYonghuzhuceDAO()
	{
		return yonghuzhuceDAO;
	}
	public void setYonghuzhuceDAO(TYonghuzhuceDAO yonghuzhuceDAO)
	{
		this.yonghuzhuceDAO = yonghuzhuceDAO;
	}
	
	public TYuangongxinxiDAO getYuangongxinxiDAO()
	{
		return yuangongxinxiDAO;
	}
	public void setYuangongxinxiDAO(TYuangongxinxiDAO yuangongxinxiDAO)
	{
		this.yuangongxinxiDAO = yuangongxinxiDAO;
	}	//jixacicxhu4
	
	public String login(String userName,String userPw,String userType)
	{
		try
		{
			Thread.sleep(700);
		} catch (InterruptedException e)
		{
			e.printStackTrace();
		}
		String result="no";
		if(userType.equals("管理员"))//系统管理员登陆
		{
			String sql="from TAllusers where username=? and pwd=?";
			Object[] con={userName,userPw};
			List allusersList=allusersDAO.getHibernateTemplate().find(sql,con);
			if(allusersList.size()==0)
			{
				 result="no";
			}
			else
			{
				 WebContext ctx = WebContextFactory.get(); 
				 HttpSession session=ctx.getSession(); 
				 TAllusers allusers=(TAllusers)allusersList.get(0);
				 session.setAttribute("cx", allusers.getCx());
				 session.setAttribute("userxinxi", allusers);
				 session.setAttribute("username", userName);
				 result="yes";
			}
		}
		if(userType.equals("注册用户"))
		{
			String sql = "from TYonghuzhuce where issh='是' and yonghuming=? and mima=?";
			Object[] con={userName,userPw};
			List yonghuzhuceList=yonghuzhuceDAO.getHibernateTemplate().find(sql,con);
			if(yonghuzhuceList.size()==0)
			{
				 result="no";
			}
			else
			{
				 WebContext ctx = WebContextFactory.get(); 
				 HttpSession session=ctx.getSession(); 
				 TYonghuzhuce yonghuzhuce=(TYonghuzhuce)yonghuzhuceList.get(0);
				 session.setAttribute("cx", userType);
				 session.setAttribute("userxinxi", yonghuzhuce);
				 session.setAttribute("username", userName);
				 result="yes";
			}
		}
		
		if(userType.equals("员工"))
		{
			String sql = "from TYuangongxinxi where 3=3 and gonghao=? and mima=?";
			Object[] con={userName,userPw};
			List yuangongxinxiList=yuangongxinxiDAO.getHibernateTemplate().find(sql,con);
			if(yuangongxinxiList.size()==0)
			{
				 result="no";
			}
			else
			{
				 WebContext ctx = WebContextFactory.get(); 
				 HttpSession session=ctx.getSession(); 
				 TYuangongxinxi yuangongxinxi=(TYuangongxinxi)yuangongxinxiList.get(0);
				 session.setAttribute("cx", userType);
				 session.setAttribute("userxinxi", yuangongxinxi);
				 session.setAttribute("username", userName);
				 result="yes";
			}
		}	//jixacicxhu5
		
		return result;
	}


	
	
	public String yonghuzhucePwEdit(String userPwNew)
    {
		System.out.println("DDDD");
    	try 
		{
			Thread.sleep(700);
		} 
		catch (InterruptedException e)
		{
			e.printStackTrace();
		}
		WebContext ctx = WebContextFactory.get(); 
		HttpSession session=ctx.getSession(); 
		 
		TYonghuzhuce yonghuzhuce=(TYonghuzhuce)session.getAttribute("userxinxi");
		yonghuzhuce.setMima(userPwNew);
		
		yonghuzhuceDAO.getHibernateTemplate().update(yonghuzhuce);
		session.setAttribute("yonghuzhuce", yonghuzhuce);
		
		return "yes";
    }
	
	public String allusersPwEdit(String userPwNew)
    {
		System.out.println("DDDD");
    	try 
		{
			Thread.sleep(700);
		} 
		catch (InterruptedException e)
		{
			e.printStackTrace();
		}
		WebContext ctx = WebContextFactory.get(); 
		HttpSession session=ctx.getSession(); 
		 
		TAllusers allusers=(TAllusers)session.getAttribute("userxinxi");
		allusers.setPwd(userPwNew);
		
		allusersDAO.getHibernateTemplate().update(allusers);
		session.setAttribute("allusers", allusers);
		
		return "yes";
    }
	
	public String yuangongxinxiPwEdit(String userPwNew)
    {
		System.out.println("DDDD");
    	try 
		{
			Thread.sleep(700);
		} 
		catch (InterruptedException e)
		{
			e.printStackTrace();
		}
		WebContext ctx = WebContextFactory.get(); 
		HttpSession session=ctx.getSession(); 
		 
		TYuangongxinxi yuangongxinxi=(TYuangongxinxi)session.getAttribute("userxinxi");
		yuangongxinxi.setMima(userPwNew);
		
		yuangongxinxiDAO.getHibernateTemplate().update(yuangongxinxi);
		session.setAttribute("yuangongxinxi", yuangongxinxi);
		
		return "yes";
    }	//jixacicxhu6
  
	
    
  
	public String allusersjiance(String userName)
    {
		String sql="from TAllusers where username='"+userName+"'";
		List allusersList=allusersDAO.getHibernateTemplate().find(sql);
		if(allusersList.size()>0)
		{
			return "Y";
		}
		else
		{
			return "N";
		}
    }
	
	public String jiance(String userName)
    {
		String sql="from TYonghuzhuce where yonghuming='"+userName+"'";
		List yonghuzhuceList=yonghuzhuceDAO.getHibernateTemplate().find(sql);
		if(yonghuzhuceList.size()>0)
		{
			return "Y";
		}
		else
		{
			return "N";
		}
    }
	
	//jixacicxhu7
    
}

