// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.opengis.nix;

import java.lang.Boolean;
import java.lang.String;
import org.opengis.nix.Usuario;

privileged aspect Parcela_Roo_JavaBean {
    
    public Usuario Parcela.getPropietario() {
        return this.Propietario;
    }
    
    public void Parcela.setPropietario(Usuario Propietario) {
        this.Propietario = Propietario;
    }
    
    public String Parcela.getAlias() {
        return this.alias;
    }
    
    public void Parcela.setAlias(String alias) {
        this.alias = alias;
    }
    
    public int Parcela.getNumPoblacion() {
        return this.numPoblacion;
    }
    
    public void Parcela.setNumPoblacion(int numPoblacion) {
        this.numPoblacion = numPoblacion;
    }
    
    public int Parcela.getNumProvincia() {
        return this.numProvincia;
    }
    
    public void Parcela.setNumProvincia(int numProvincia) {
        this.numProvincia = numProvincia;
    }
    
    public int Parcela.getNumParcela() {
        return this.numParcela;
    }
    
    public void Parcela.setNumParcela(int numParcela) {
        this.numParcela = numParcela;
    }
    
    public int Parcela.getNumPartida() {
        return this.numPartida;
    }
    
    public void Parcela.setNumPartida(int numPartida) {
        this.numPartida = numPartida;
    }
    
    public Boolean Parcela.getActiva() {
        return this.activa;
    }
    
    public void Parcela.setActiva(Boolean activa) {
        this.activa = activa;
    }
    
}
