// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.opengis.nix;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.opengis.nix.ParcelaDataOnDemand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ParcelaIntegrationTest_Roo_IntegrationTest {
    
    declare @type: ParcelaIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: ParcelaIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: ParcelaIntegrationTest: @Transactional;
    
    @Autowired
    private ParcelaDataOnDemand ParcelaIntegrationTest.dod;
    
    @Test
    public void ParcelaIntegrationTest.testCountParcelas() {
        org.junit.Assert.assertNotNull("Data on demand for 'Parcela' failed to initialize correctly", dod.getRandomParcela());
        long count = org.opengis.nix.Parcela.countParcelas();
        org.junit.Assert.assertTrue("Counter for 'Parcela' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void ParcelaIntegrationTest.testFindParcela() {
        org.opengis.nix.Parcela obj = dod.getRandomParcela();
        org.junit.Assert.assertNotNull("Data on demand for 'Parcela' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Parcela' failed to provide an identifier", id);
        obj = org.opengis.nix.Parcela.findParcela(id);
        org.junit.Assert.assertNotNull("Find method for 'Parcela' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'Parcela' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void ParcelaIntegrationTest.testFindAllParcelas() {
        org.junit.Assert.assertNotNull("Data on demand for 'Parcela' failed to initialize correctly", dod.getRandomParcela());
        long count = org.opengis.nix.Parcela.countParcelas();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'Parcela', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<org.opengis.nix.Parcela> result = org.opengis.nix.Parcela.findAllParcelas();
        org.junit.Assert.assertNotNull("Find all method for 'Parcela' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'Parcela' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void ParcelaIntegrationTest.testFindParcelaEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'Parcela' failed to initialize correctly", dod.getRandomParcela());
        long count = org.opengis.nix.Parcela.countParcelas();
        if (count > 20) count = 20;
        java.util.List<org.opengis.nix.Parcela> result = org.opengis.nix.Parcela.findParcelaEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'Parcela' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'Parcela' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void ParcelaIntegrationTest.testFlush() {
        org.opengis.nix.Parcela obj = dod.getRandomParcela();
        org.junit.Assert.assertNotNull("Data on demand for 'Parcela' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Parcela' failed to provide an identifier", id);
        obj = org.opengis.nix.Parcela.findParcela(id);
        org.junit.Assert.assertNotNull("Find method for 'Parcela' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyParcela(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'Parcela' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ParcelaIntegrationTest.testMerge() {
        org.opengis.nix.Parcela obj = dod.getRandomParcela();
        org.junit.Assert.assertNotNull("Data on demand for 'Parcela' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Parcela' failed to provide an identifier", id);
        obj = org.opengis.nix.Parcela.findParcela(id);
        boolean modified =  dod.modifyParcela(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        org.opengis.nix.Parcela merged =  obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'Parcela' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ParcelaIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'Parcela' failed to initialize correctly", dod.getRandomParcela());
        org.opengis.nix.Parcela obj = dod.getNewTransientParcela(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'Parcela' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'Parcela' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'Parcela' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void ParcelaIntegrationTest.testRemove() {
        org.opengis.nix.Parcela obj = dod.getRandomParcela();
        org.junit.Assert.assertNotNull("Data on demand for 'Parcela' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Parcela' failed to provide an identifier", id);
        obj = org.opengis.nix.Parcela.findParcela(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'Parcela' with identifier '" + id + "'", org.opengis.nix.Parcela.findParcela(id));
    }
    
}