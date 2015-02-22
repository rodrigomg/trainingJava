package mx.ipn.upiicsa.dao.impl.hibernate;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mx.ipn.upiicsa.dao.UserRoleDao;
import mx.ipn.upiicsa.domains.User;
@Repository
public class UserRoleDaoImpl extends AbstractGenericDaoImpl<User, Long> implements UserRoleDao {
	@Autowired
    public UserRoleDaoImpl(SessionFactory sessionFactory){
        super(sessionFactory);
    }


}
