package mx.ipn.upiicsa.test.integration.dao.hibernate;

import static org.springframework.util.Assert.isTrue;
import static org.springframework.util.Assert.notNull;

import java.util.Date;

import javax.transaction.Transactional;

import mx.ipn.upiicsa.dao.UsuarioDao;
import mx.ipn.upiicsa.domains.User;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"/DataSourceAppCtx.xml", "/HibernateAppCtx.xml"})
@Transactional
public class UserDaoHibernateImplIntegrationTest {
	@Autowired
	UsuarioDao usuarioDao;
	
	static User user = new User();
	static Long id = 0L;
	@Test
	@Rollback (false)
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

}
