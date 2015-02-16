package mx.ipn.upiicsa.test.integration.dao.hibernate;

import static org.springframework.util.Assert.isTrue;
import static org.springframework.util.Assert.notNull;

import java.util.Date;
import java.util.List;

import mx.ipn.upiicsa.dao.UsuarioDao;
import mx.ipn.upiicsa.domains.User;

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
public class UserDaoHibernateImplIntegrationTest {
	@Autowired
	UsuarioDao usuarioDao;
	
	static User user = new User();
	static Long id = 0L;
	@Test
	@Rollback(false)
	public void prueba1Create(){
		user.setUsername("niki_bonita@ebc.edu.mx");
		user.setPassword("anniemama");
		user.setEnabled(1);
		user.setNombre("Niki");
		user.setApellidoMaterno("Islas");
		user.setApellidoPaterno("Escalona");
		user.setFechaNacimiento(new Date());
		user.setDateCreated(new Date ());
		user.setSexo("F");
		user.setTelefono("555555");
		usuarioDao.create(user);
		id = user.getId();
		
		notNull(id);
		isTrue(id>0);
		System.out.print("CREATE: "+user.getId());
		
	}
	@Test
	public void prueba2Count(){
		Long count = usuarioDao.count();
		isTrue(count > 0L);
		System.out.print("COUNT: " + count);
	}
	@Test
	public void prueba3Read(){
		user = usuarioDao.read(id);
		notNull(user);
		isTrue(user.getId() == id);
		
		System.out.print("READ: " + user.getId());
	}
	@Test
	public void prueba4FindAll(){
		List<User> listUser = usuarioDao.findAll();
		notNull(listUser);
		isTrue(!listUser.isEmpty());
		System.out.print("FINDALL: " + listUser.size());
	}
	@Test
	@Rollback(false)
	public void prueba5Update(){
		user.setEnabled(1);
		usuarioDao.update(user);
		notNull(user);
		System.out.print("UPDTAE: " + user.getEnabled());
	}
	@Test
	@Rollback(false)
	public void prueba6Delete(){
		usuarioDao.delete(usuarioDao.read(id));
	}
}
