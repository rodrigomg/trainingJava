package mx.ipn.upiicsa.dao;

import java.io.Serializable;

public interface AbstractGenericDao<T, PK extends Serializable> {
	void create(T nexInstance);
	T read(PK id);

}
