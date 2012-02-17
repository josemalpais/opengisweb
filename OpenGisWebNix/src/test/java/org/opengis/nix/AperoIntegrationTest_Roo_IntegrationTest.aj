// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.opengis.nix;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.opengis.nix.AperoDataOnDemand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect AperoIntegrationTest_Roo_IntegrationTest {
    
    declare @type: AperoIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: AperoIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: AperoIntegrationTest: @Transactional;
    
    @Autowired
    private AperoDataOnDemand AperoIntegrationTest.dod;
    
    @Test
    public void AperoIntegrationTest.testCountAperoes() {
        org.junit.Assert.assertNotNull("Data on demand for 'Apero' failed to initialize correctly", dod.getRandomApero());
        long count = org.opengis.nix.Apero.countAperoes();
        org.junit.Assert.assertTrue("Counter for 'Apero' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void AperoIntegrationTest.testFindApero() {
        org.opengis.nix.Apero obj = dod.getRandomApero();
        org.junit.Assert.assertNotNull("Data on demand for 'Apero' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Apero' failed to provide an identifier", id);
        obj = org.opengis.nix.Apero.findApero(id);
        org.junit.Assert.assertNotNull("Find method for 'Apero' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'Apero' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void AperoIntegrationTest.testFindAllAperoes() {
        org.junit.Assert.assertNotNull("Data on demand for 'Apero' failed to initialize correctly", dod.getRandomApero());
        long count = org.opengis.nix.Apero.countAperoes();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'Apero', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<org.opengis.nix.Apero> result = org.opengis.nix.Apero.findAllAperoes();
        org.junit.Assert.assertNotNull("Find all method for 'Apero' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'Apero' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void AperoIntegrationTest.testFindAperoEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'Apero' failed to initialize correctly", dod.getRandomApero());
        long count = org.opengis.nix.Apero.countAperoes();
        if (count > 20) count = 20;
        java.util.List<org.opengis.nix.Apero> result = org.opengis.nix.Apero.findAperoEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'Apero' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'Apero' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void AperoIntegrationTest.testFlush() {
        org.opengis.nix.Apero obj = dod.getRandomApero();
        org.junit.Assert.assertNotNull("Data on demand for 'Apero' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Apero' failed to provide an identifier", id);
        obj = org.opengis.nix.Apero.findApero(id);
        org.junit.Assert.assertNotNull("Find method for 'Apero' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyApero(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'Apero' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void AperoIntegrationTest.testMerge() {
        org.opengis.nix.Apero obj = dod.getRandomApero();
        org.junit.Assert.assertNotNull("Data on demand for 'Apero' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Apero' failed to provide an identifier", id);
        obj = org.opengis.nix.Apero.findApero(id);
        boolean modified =  dod.modifyApero(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        org.opengis.nix.Apero merged =  obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'Apero' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void AperoIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'Apero' failed to initialize correctly", dod.getRandomApero());
        org.opengis.nix.Apero obj = dod.getNewTransientApero(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'Apero' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'Apero' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'Apero' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void AperoIntegrationTest.testRemove() {
        org.opengis.nix.Apero obj = dod.getRandomApero();
        org.junit.Assert.assertNotNull("Data on demand for 'Apero' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Apero' failed to provide an identifier", id);
        obj = org.opengis.nix.Apero.findApero(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'Apero' with identifier '" + id + "'", org.opengis.nix.Apero.findApero(id));
    }
    
}