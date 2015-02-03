package mx.ipn.upiicsa.dao.impl.hibernate;

import mx.ipn.upiicsa.dao.UsuarioDao;
import mx.ipn.upiicsa.domains.User;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class UsuarioDaoImpl extends AbstractGenericDaoImpl<User, Long> implements UsuarioDao {

	@Autowired
    public UsuarioDaoImpl(SessionFactory sessionFactory){
        super(sessionFactory);
    }

}
