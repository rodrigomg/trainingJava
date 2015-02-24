package mx.ipn.upiicsa.test.integration.dao.hibernate;

import static org.springframework.util.Assert.isTrue;
import static org.springframework.util.Assert.notNull;

import java.util.List;

import mx.ipn.upiicsa.dao.UserRoleDao;
import mx.ipn.upiicsa.domains.UserRole;

import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

@RunWith(SpringJUnit4ClassRunner.class)
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
@ContextConfiguration({"/DataSourceAppCtx.xml", "/HibernateAppCtx.xml"})
@Transactional
public class UserRoleDaoHibernateImplIntegrationTest {
	@Autowired
	UserRoleDao userRoleDao;
	
	static UserRole userRole = new UserRole();
	static Long id_Role = 0L;
	@Test
	//@Rollback(false)
	public void prueba1Create(){
		userRole.setUserId(1L);
		userRole.setRole("ROLE_USER");
		userRoleDao.create(userRole);
		id_Role= userRole.getId();
		isTrue(id_Role>0);
		isTrue(userRole.getId()>0);
		System.out.print("CREATE: "+userRole.getId());
	
	}
	@Test
	public void prueba2Count(){
		Long count = userRoleDao.count();
		isTrue(count > 0L);
		System.out.print("COUNT: " + count);
	}
	@Test
	public void prueba3Read(){
		userRole = userRoleDao.read(id_Role);
		notNull(userRole);
		isTrue(userRole.getId() == id_Role);
		
		System.out.print("READ: " + userRole.getId());
	}
	@Test
	public void prueba4FindAll(){
		List<UserRole> listUserRole = userRoleDao.findAll();
		notNull(listUserRole);
		isTrue(!listUserRole.isEmpty());
		System.out.print("FINDALL: " + listUserRole.size());
	}
	@Test
	@Rollback(false)
	public void prueba5Update(){
		userRole.setRole("ROLE_USER");
		userRoleDao.update(userRole);
		notNull(userRole);
		System.out.print("UPDATE: " + userRole.getId());
	}
	@Test
	@Rollback(false)
	public void prueba6Delete(){
		userRoleDao.delete(userRoleDao.read(id_Role));
	}

}
