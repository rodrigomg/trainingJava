package mx.ipn.upiicsa.dao.impl.hibernate;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import mx.ipn.upiicsa.dao.AbstractGenericDao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public abstract class AbstractGenericDaoImpl<T, PK extends Serializable> implements AbstractGenericDao<T, PK> {

  private SessionFactory sessionFactory;

  public AbstractGenericDaoImpl(SessionFactory sessionFactory) {
    this.sessionFactory = sessionFactory;
  }

  public void create(T newInstance) {
    System.out.println("BEGIN -> CREATE: "+ newInstance.toString());
    currentSession().save(newInstance);
    System.out.println("FIN -> CREATE: "+ newInstance.toString());
  }

  @SuppressWarnings("unchecked")
  public T read(PK id) {
    System.out.println("READ: id="+ id);
    return (T) currentSession().get(getType(), id);
  }

  public void update(T transientObject) {
    System.out.println("BEGIN -> UPDATE: "+ transientObject.toString());
    currentSession().update(transientObject);
    System.out.println("FIN -> UPDATE: "+ transientObject.toString());
  }

  public void delete(T persistentObject) {
    System.out.println("DELETE: "+ persistentObject.toString());
    currentSession().delete(persistentObject);
  }

  @SuppressWarnings("unchecked")
  public List<T> findAll() {
    return currentSession().createQuery("from " + getType().getName()).list();
  }

  public long count() {
    Query query = currentSession().createQuery("Select count(*) from " + getType().getName());
    return (Long) query.uniqueResult();
  }

  @SuppressWarnings("rawtypes")
  private Class<?> getType() {
    ParameterizedType parameterizedType = (ParameterizedType) getClass().getGenericSuperclass();
    return (Class) parameterizedType.getActualTypeArguments()[0];
  }

  public Session currentSession() {
    return sessionFactory.getCurrentSession();
  }
}
