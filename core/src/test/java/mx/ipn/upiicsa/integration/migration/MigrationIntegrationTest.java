package mx.ipn.upiicsa.integration.migration;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.util.Assert;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"/DataSourceAppCtx.xml", "/MigrationAppCtx.xml"})
public class MigrationIntegrationTest {

  @Test
  public void test() {
    Assert.isTrue(true);
  }
}
