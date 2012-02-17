// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.opengis.nix;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.opengis.nix.UsuarioDataOnDemand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect UsuarioIntegrationTest_Roo_IntegrationTest {
    
    declare @type: UsuarioIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: UsuarioIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: UsuarioIntegrationTest: @Transactional;
    
    @Autowired
    private UsuarioDataOnDemand UsuarioIntegrationTest.dod;
    
    @Test
    public void UsuarioIntegrationTest.testCountUsuarios() {
        org.junit.Assert.assertNotNull("Data on demand for 'Usuario' failed to initialize correctly", dod.getRandomUsuario());
        long count = org.opengis.nix.Usuario.countUsuarios();
        org.junit.Assert.assertTrue("Counter for 'Usuario' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void UsuarioIntegrationTest.testFindUsuario() {
        org.opengis.nix.Usuario obj = dod.getRandomUsuario();
        org.junit.Assert.assertNotNull("Data on demand for 'Usuario' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Usuario' failed to provide an identifier", id);
        obj = org.opengis.nix.Usuario.findUsuario(id);
        org.junit.Assert.assertNotNull("Find method for 'Usuario' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'Usuario' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void UsuarioIntegrationTest.testFindAllUsuarios() {
        org.junit.Assert.assertNotNull("Data on demand for 'Usuario' failed to initialize correctly", dod.getRandomUsuario());
        long count = org.opengis.nix.Usuario.countUsuarios();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'Usuario', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<org.opengis.nix.Usuario> result = org.opengis.nix.Usuario.findAllUsuarios();
        org.junit.Assert.assertNotNull("Find all method for 'Usuario' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'Usuario' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void UsuarioIntegrationTest.testFindUsuarioEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'Usuario' failed to initialize correctly", dod.getRandomUsuario());
        long count = org.opengis.nix.Usuario.countUsuarios();
        if (count > 20) count = 20;
        java.util.List<org.opengis.nix.Usuario> result = org.opengis.nix.Usuario.findUsuarioEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'Usuario' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'Usuario' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void UsuarioIntegrationTest.testFlush() {
        org.opengis.nix.Usuario obj = dod.getRandomUsuario();
        org.junit.Assert.assertNotNull("Data on demand for 'Usuario' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Usuario' failed to provide an identifier", id);
        obj = org.opengis.nix.Usuario.findUsuario(id);
        org.junit.Assert.assertNotNull("Find method for 'Usuario' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyUsuario(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'Usuario' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void UsuarioIntegrationTest.testMerge() {
        org.opengis.nix.Usuario obj = dod.getRandomUsuario();
        org.junit.Assert.assertNotNull("Data on demand for 'Usuario' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Usuario' failed to provide an identifier", id);
        obj = org.opengis.nix.Usuario.findUsuario(id);
        boolean modified =  dod.modifyUsuario(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        org.opengis.nix.Usuario merged =  obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'Usuario' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void UsuarioIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'Usuario' failed to initialize correctly", dod.getRandomUsuario());
        org.opengis.nix.Usuario obj = dod.getNewTransientUsuario(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'Usuario' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'Usuario' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'Usuario' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void UsuarioIntegrationTest.testRemove() {
        org.opengis.nix.Usuario obj = dod.getRandomUsuario();
        org.junit.Assert.assertNotNull("Data on demand for 'Usuario' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Usuario' failed to provide an identifier", id);
        obj = org.opengis.nix.Usuario.findUsuario(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'Usuario' with identifier '" + id + "'", org.opengis.nix.Usuario.findUsuario(id));
    }
    
}
