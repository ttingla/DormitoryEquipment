package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TYuangongxinxi;

/**
 * Data access object (DAO) for domain model class TYuangongxinxi.
 * 
 * @see com.model.TYuangongxinxi
 * @author MyEclipse Persistence Tools
 */

public class TYuangongxinxiDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TYuangongxinxiDAO.class);

	// property constants
	
	public static final String GONGHAO = "gonghao";	public static final String MIMA = "mima";	public static final String XINGMING = "xingming";	public static final String XINGBIE = "xingbie";	public static final String SHENFENZHENG = "shenfenzheng";	public static final String DIANHUA = "dianhua";	public static final String BUMEN = "bumen";	public static final String ZHAOPIAN = "zhaopian";	public static final String JIBENYUEXIN = "jibenyuexin";	public static final String BEIZHU = "beizhu";	
	

	protected void initDao()
	{
		// do nothing
	}

	public void save(TYuangongxinxi transientInstance)
	{
		log.debug("saving TYuangongxinxi instance");
		try
		{
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re)
		{
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TYuangongxinxi persistentInstance)
	{
		log.debug("deleting TYuangongxinxi instance");
		try
		{
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re)
		{
			log.error("delete failed", re);
			throw re;
		}
	}

	public TYuangongxinxi findById(java.lang.Integer id)
	{
		log.debug("getting TYuangongxinxi instance with id: " + id);
		try
		{
			TYuangongxinxi instance = (TYuangongxinxi) getHibernateTemplate().get(
					"com.model.TYuangongxinxi", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TYuangongxinxi instance)
	{
		log.debug("finding TYuangongxinxi instance by example");
		try
		{
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re)
		{
			log.error("find by example failed", re);
			throw re;
		}
	}

	//public List findByYonghuming(String propertyYonghuming, Object value)
//	{
//		log.debug("finding TYuangongxinxi instance with yonghuming: " + propertyYonghuming
//				+ ", value: " + value);
//		try
//		{
//			String queryString = "from TYuangongxinxi as model where model."
//					+ propertyYonghuming + "= ?";
//			return getHibernateTemplate().find(queryString, value);
//		} catch (RuntimeException re)
//		{
//			log.error("find by property yonghuming failed", re);
//			throw re;
//		}
//	}

	
	//public List findByYonghuming(Object yonghuming)
//	{
//		return findByYonghuming(YONGHUMING, yonghuming);
//	}

	//public List findByXingming(Object xingming)
//	{
//		return findByXingming(XINGMING, xingming);
//	}

	

	public List findAll()
	{
		log.debug("finding all TYuangongxinxi instances");
		try
		{
			String queryString = "from TYuangongxinxi";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TYuangongxinxi merge(TYuangongxinxi detachedInstance)
	{
		log.debug("merging TYuangongxinxi instance");
		try
		{
			TYuangongxinxi result = (TYuangongxinxi) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}


	public void attachDirty(TYuangongxinxi instance)
	{
		log.debug("attaching dirty TYuangongxinxi instance");
		try
		{
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TYuangongxinxi instance)
	{
		log.debug("attaching clean TYuangongxinxi instance");
		try
		{
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TYuangongxinxiDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TYuangongxinxiDAO) ctx.getBean("TYuangongxinxiDAO");
	}
}
