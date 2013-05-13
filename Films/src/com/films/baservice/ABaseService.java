package com.films.baservice;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public abstract class ABaseService implements IBaseService {

	@Resource
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	

	/**
	 * @author ShelWee
	 * @param hql: �����hql,���Դ�? 
	 * @param parameters:�ʺŶ�Ӧ�Ĳ�������
	 */
	public List getResult(String hql, Object[] parameters) {
		// TODO Auto-generated method stub
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		//ע��?
		if(parameters!=null&&parameters.length>0){
			
			for(int i=0;i<parameters.length;i++){
				query.setParameter(i, parameters[i]);
			}
		}
		return query.list();
	}

	@Override
	public void save(Object obj) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(obj);
	}

	@Override
	public void delete(Object obj) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(obj);
	}

	@Override
	public void update(Object obj) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(obj);
	}

	@Override
	public Object findById(Class clazz, Serializable id) {
		// TODO Auto-generated method stub
		return this.sessionFactory.getCurrentSession().load(clazz, id);
	}

	@Override
	public List executeQueryByPage(String hql, String[] parameters,
			int pageSize, int pageNow) {
		// TODO Auto-generated method stub
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		//���ж��Ƿ��в���Ҫ��
		if(parameters!=null&& parameters.length>0){
			for(int i=0;i<parameters.length;i++){
				query.setString(i, parameters[i]);
			}
		}
		query.setFirstResult((pageNow-1)*pageSize).setMaxResults(pageSize);	
		List list=query.list();
		
		return list;
	}
	
	public Object uniqueQuery(String hql, Object[] parameters) {
		// TODO Auto-generated method stub
		Query query=this.sessionFactory.getCurrentSession().createQuery(hql);
		//��?��ֵ
		if(parameters!=null && parameters.length>0){
			for(int i=0;i<parameters.length;i++){
				query.setParameter(i, parameters[i]);
			}
		}
		
		return query.uniqueResult();
	}

	@Override
	public int queryPageCount(String hql, Object[] parameters, int pageSize) {
		// TODO Auto-generated method stub
			// TODO Auto-generated method stub
		Object obj=this.uniqueQuery(hql, parameters);
		int rowCount=Integer.parseInt(obj.toString());
		return (rowCount-1)/pageSize+1;
	}	
}
