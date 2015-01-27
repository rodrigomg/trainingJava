package mx.ipn.upiicsa.dao.impl.hibernate;

import java.io.Serializable;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;

import mx.ipn.upiicsa.dao.AbstractGenericDao;

public abstract class AbstractGenericDaoHibernateImpl<T, PK extends Serializable> implements AbstractGenericDao<T, PK> {
	private SessionFactory sessionFactory;
	Logger log=Logger.getLogger(this.getClass());
	
	public AbstractGenericDaoHibernateImpl (SessionFactory sessionFactory){
		this.sessionFactory= sessionFactory;
	}
	public void create (T newInstance){
		log.debug("BEGIN -> CREATE:" + newInstance.toString());
		currentSession().save(newInstance);
		log.debug("FIN -> CREATE: " + newInstance.toString());
	}
	

}
