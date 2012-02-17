// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.opengis.nix;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import org.opengis.nix.Parcela;
import org.opengis.nix.Usuario;

privileged aspect Parcela_Roo_Finder {
    
    public static TypedQuery<Parcela> Parcela.findParcelasByPropietario(Usuario Propietario) {
        if (Propietario == null) throw new IllegalArgumentException("The Propietario argument is required");
        EntityManager em = Parcela.entityManager();
        TypedQuery<Parcela> q = em.createQuery("SELECT o FROM Parcela AS o WHERE o.Propietario = :Propietario", Parcela.class);
        q.setParameter("Propietario", Propietario);
        return q;
    }
    
}