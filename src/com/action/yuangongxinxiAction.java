package com.action;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;


import com.dao.TYuangongxinxiDAO;

import com.model.TYuangongxinxi;

import com.opensymphony.xwork2.ActionSupport;
import com.util.Pagesize;
import com.util.Pagination;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import com.util.db;
import java.util.ArrayList;
import com.opensymphony.xwork2.ActionContext;
public class yuangongxinxiAction extends ActionSupport
{
	private int id;
	
	private String gonghao;
	
	private String addtime;
	private String message;
	private String path;
	private ResultSet rs;
	private List list;
	
	private TYuangongxinxiDAO yuangongxinxiDAO;
	

	
	public String yuangongxinxiAdd()
	{
		TYuangongxinxi yuangongxinxi=new TYuangongxinxi();
		
		
		yuangongxinxi.setGonghao(gonghao);
		
		
		
		yuangongxinxiDAO.save(yuangongxinxi);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		//request.put("msg", "���ӳɹ�");
		request.put("msg", "<script>javascript:alert('�����ɹ���');history.back();</script>");
		return "msg";
	}
	
	
	
	public String yuangongxinxiList()
	{
		
		
	    HttpServletRequest request=ServletActionContext.getRequest();
		int index=0;
		if(request.getParameter("index")==null)
		{
			index=1;
		}
		else
		{
			index=Integer.parseInt(request.getParameter("index"));
		}
		int hsgpagesize=20;
		String sql = "from TYuangongxinxi where 1=1 ";
		if(gonghao!=null){sql=sql+" and gonghao like '%"+gonghao.trim()+"%'";}
		sql=sql+" order by id desc";
		List yuangongxinxiList=yuangongxinxiDAO.getHibernateTemplate().find(sql);
		
		int fromIndex = (index - 1) * hsgpagesize;
		int toIndex = Math.min(fromIndex + hsgpagesize, yuangongxinxiList.size());
		List yuangongxinxiList1 = yuangongxinxiList.subList(fromIndex, toIndex);
		Pagination p = new Pagination();//���� ��ҳ����
        p.setIndex(index);//����ҳ��
        p.setPageSize(hsgpagesize);
        p.setTotle(yuangongxinxiList.size());//�����ܹ�������
        p.setData(yuangongxinxiList1);//��������
		
		request.setAttribute("page", p);
		return ActionSupport.SUCCESS;
	}
	
	public String yuangongxinxiList_yanben1()
	{
		
		
	    HttpServletRequest request=ServletActionContext.getRequest();
		int index=0;
		if(request.getParameter("index")==null)
		{
			index=1;
		}
		else
		{
			index=Integer.parseInt(request.getParameter("index"));
		}
		int hsgpagesize=20;
		String sql = "from TYuangongxinxi where 1=1 ";
		if(gonghao!=null){sql=sql+" and gonghao like '%"+gonghao.trim()+"%'";}
		sql=sql+" order by id desc";
		List yuangongxinxiList=yuangongxinxiDAO.getHibernateTemplate().find(sql);
		
		int fromIndex = (index - 1) * hsgpagesize;
		int toIndex = Math.min(fromIndex + hsgpagesize, yuangongxinxiList.size());
		List yuangongxinxiList1 = yuangongxinxiList.subList(fromIndex, toIndex);
		Pagination p = new Pagination();//���� ��ҳ����
        p.setIndex(index);//����ҳ��
        p.setPageSize(hsgpagesize);
        p.setTotle(yuangongxinxiList.size());//�����ܹ�������
        p.setData(yuangongxinxiList1);//��������
		
		request.setAttribute("page", p);
		return ActionSupport.SUCCESS;
	}
	
	public String yuangongxinxiList_yanben2()
	{
		
		
	    HttpServletRequest request=ServletActionContext.getRequest();
		int index=0;
		if(request.getParameter("index")==null)
		{
			index=1;
		}
		else
		{
			index=Integer.parseInt(request.getParameter("index"));
		}
		int hsgpagesize=20;
		String sql = "from TYuangongxinxi where 1=1 ";
		if(gonghao!=null){sql=sql+" and gonghao like '%"+gonghao.trim()+"%'";}
		sql=sql+" order by id desc";
		List yuangongxinxiList=yuangongxinxiDAO.getHibernateTemplate().find(sql);
		
		int fromIndex = (index - 1) * hsgpagesize;
		int toIndex = Math.min(fromIndex + hsgpagesize, yuangongxinxiList.size());
		List yuangongxinxiList1 = yuangongxinxiList.subList(fromIndex, toIndex);
		Pagination p = new Pagination();//���� ��ҳ����
        p.setIndex(index);//����ҳ��
        p.setPageSize(hsgpagesize);
        p.setTotle(yuangongxinxiList.size());//�����ܹ�������
        p.setData(yuangongxinxiList1);//��������
		
		request.setAttribute("page", p);
		return ActionSupport.SUCCESS;
	}
	
	public String yuangongxinxiList_yanben3()
	{
		
		
	    HttpServletRequest request=ServletActionContext.getRequest();
		int index=0;
		if(request.getParameter("index")==null)
		{
			index=1;
		}
		else
		{
			index=Integer.parseInt(request.getParameter("index"));
		}
		int hsgpagesize=20;
		String sql = "from TYuangongxinxi where 1=1 ";
		if(gonghao!=null){sql=sql+" and gonghao like '%"+gonghao.trim()+"%'";}
		sql=sql+" order by id desc";
		List yuangongxinxiList=yuangongxinxiDAO.getHibernateTemplate().find(sql);
		
		int fromIndex = (index - 1) * hsgpagesize;
		int toIndex = Math.min(fromIndex + hsgpagesize, yuangongxinxiList.size());
		List yuangongxinxiList1 = yuangongxinxiList.subList(fromIndex, toIndex);
		Pagination p = new Pagination();//���� ��ҳ����
        p.setIndex(index);//����ҳ��
        p.setPageSize(hsgpagesize);
        p.setTotle(yuangongxinxiList.size());//�����ܹ�������
        p.setData(yuangongxinxiList1);//��������
		
		request.setAttribute("page", p);
		return ActionSupport.SUCCESS;
	}
	
	public String yuangongxinxiList_yanben4()
	{
		
		
	    HttpServletRequest request=ServletActionContext.getRequest();
		int index=0;
		if(request.getParameter("index")==null)
		{
			index=1;
		}
		else
		{
			index=Integer.parseInt(request.getParameter("index"));
		}
		int hsgpagesize=20;
		String sql = "from TYuangongxinxi where 1=1 ";
		if(gonghao!=null){sql=sql+" and gonghao like '%"+gonghao.trim()+"%'";}
		sql=sql+" order by id desc";
		List yuangongxinxiList=yuangongxinxiDAO.getHibernateTemplate().find(sql);
		
		int fromIndex = (index - 1) * hsgpagesize;
		int toIndex = Math.min(fromIndex + hsgpagesize, yuangongxinxiList.size());
		List yuangongxinxiList1 = yuangongxinxiList.subList(fromIndex, toIndex);
		Pagination p = new Pagination();//���� ��ҳ����
        p.setIndex(index);//����ҳ��
        p.setPageSize(hsgpagesize);
        p.setTotle(yuangongxinxiList.size());//�����ܹ�������
        p.setData(yuangongxinxiList1);//��������
		
		request.setAttribute("page", p);
		return ActionSupport.SUCCESS;
	}
	
	public String yuangongxinxiList_yanben5()
	{
		
		
	    HttpServletRequest request=ServletActionContext.getRequest();
		int index=0;
		if(request.getParameter("index")==null)
		{
			index=1;
		}
		else
		{
			index=Integer.parseInt(request.getParameter("index"));
		}
		int hsgpagesize=20;
		String sql = "from TYuangongxinxi where 1=1 ";
		if(gonghao!=null){sql=sql+" and gonghao like '%"+gonghao.trim()+"%'";}
		sql=sql+" order by id desc";
		List yuangongxinxiList=yuangongxinxiDAO.getHibernateTemplate().find(sql);
		
		int fromIndex = (index - 1) * hsgpagesize;
		int toIndex = Math.min(fromIndex + hsgpagesize, yuangongxinxiList.size());
		List yuangongxinxiList1 = yuangongxinxiList.subList(fromIndex, toIndex);
		Pagination p = new Pagination();//���� ��ҳ����
        p.setIndex(index);//����ҳ��
        p.setPageSize(hsgpagesize);
        p.setTotle(yuangongxinxiList.size());//�����ܹ�������
        p.setData(yuangongxinxiList1);//��������
		
		request.setAttribute("page", p);
		return ActionSupport.SUCCESS;
	}
	
	
	
	//youtplisxt
	
	
	
	public String yuangongxinxiDel()
	{
		String sql = "delete from TYuangongxinxi where id=?";
		Object[] o={id};
		yuangongxinxiDAO.getHibernateTemplate().bulkUpdate(sql, o);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "�����ɹ�");
		return "msg";
	}
	
	
	
	public String yuangongxinxiPre()
	{
		TYuangongxinxi yuangongxinxi=yuangongxinxiDAO.findById(id);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("yuangongxinxi", yuangongxinxi);
		return ActionSupport.SUCCESS;
	}
	
	public String yuangongxinxiDetail()
	{
		TYuangongxinxi yuangongxinxi=yuangongxinxiDAO.findById(id);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("yuangongxinxi", yuangongxinxi);
		return ActionSupport.SUCCESS;
	}
	
	
	
	public String yuangongxinxiPre2()
	{
		int nid=0;

		Map session=ActionContext.getContext().getSession();
		
		if(session.get("userxinxi")!=null)
		{
			TYuangongxinxi user=(TYuangongxinxi)session.get("userxinxi");
			nid=user.getId();
		}
		
		TYuangongxinxi yuangongxinxi=yuangongxinxiDAO.findById(nid);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("yuangongxinxi", yuangongxinxi);
		return ActionSupport.SUCCESS;
	}
	
	public String yuangongxinxiUpdt2()
	{
		TYuangongxinxi yuangongxinxi=yuangongxinxiDAO.findById(id);
		
		yuangongxinxi.setGonghao(gonghao);
		
		yuangongxinxiDAO.attachDirty(yuangongxinxi);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		//request.put("msg", "�����ɹ�");
		request.put("msg", "<script>javascript:alert('�����ɹ���');history.back();</script>");
		return "msg";
	}
	
	//yoxulb
	
	

	public String yuangongxinxiUpdt()
	{
		TYuangongxinxi yuangongxinxi=yuangongxinxiDAO.findById(id);
		
		yuangongxinxi.setGonghao(gonghao);
		
		yuangongxinxiDAO.attachDirty(yuangongxinxi);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "�����ɹ�");
		return "msg";
	}
	
	

		public String getGonghao()
	{
		return gonghao;
	}
	public void setGonghao(String gonghao)
	{
		this.gonghao = gonghao;
	}
	{
		return mima;
	}
	public void setMima(String mima)
	{
		this.mima = mima;
	}
	{
		return xingming;
	}
	public void setXingming(String xingming)
	{
		this.xingming = xingming;
	}
	{
		return xingbie;
	}
	public void setXingbie(String xingbie)
	{
		this.xingbie = xingbie;
	}
	{
		return shenfenzheng;
	}
	public void setShenfenzheng(String shenfenzheng)
	{
		this.shenfenzheng = shenfenzheng;
	}
	{
		return dianhua;
	}
	public void setDianhua(String dianhua)
	{
		this.dianhua = dianhua;
	}
	{
		return bumen;
	}
	public void setBumen(String bumen)
	{
		this.bumen = bumen;
	}
	{
		return zhaopian;
	}
	public void setZhaopian(String zhaopian)
	{
		this.zhaopian = zhaopian;
	}
	{
		return jibenyuexin;
	}
	public void setJibenyuexin(String jibenyuexin)
	{
		this.jibenyuexin = jibenyuexin;
	}
	{
		return beizhu;
	}
	public void setBeizhu(String beizhu)
	{
		this.beizhu = beizhu;
	}
	
	
	
	
	public String getAddtime()
	{
		return addtime;
	}
	public void setAddtime(String addtime)
	{
		this.addtime = addtime;
	}
	


	public TYuangongxinxiDAO getYuangongxinxiDAO()
	{
		return yuangongxinxiDAO;
	}

	public void setYuangongxinxiDAO(TYuangongxinxiDAO yuangongxinxiDAO)
	{
		this.yuangongxinxiDAO = yuangongxinxiDAO;
	}

	

	



	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public String getMessage()
	{
		return message;
	}
	public void setMessage(String message)
	{
		this.message = message;
	}






	public String getPath()
	{
		return path;
	}



	public void setPath(String path)
	{
		this.path = path;
	}



	
	
}
