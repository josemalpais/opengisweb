// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.opengis.gvnix;

import java.lang.Boolean;
import java.lang.String;
import org.opengis.gvnix.domain.enumerated.Tarea;

privileged aspect Producto_Roo_JavaBean {
    
    public int Producto.getIdprod() {
        return this.idprod;
    }
    
    public void Producto.setIdprod(int idprod) {
        this.idprod = idprod;
    }
    
    public String Producto.getNombre() {
        return this.nombre;
    }
    
    public void Producto.setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String Producto.getDescripcion() {
        return this.descripcion;
    }
    
    public void Producto.setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    public Tarea Producto.getNomtarea() {
        return this.nomtarea;
    }
    
    public void Producto.setNomtarea(Tarea nomtarea) {
        this.nomtarea = nomtarea;
    }
    
    public int Producto.getDosis() {
        return this.dosis;
    }
    
    public void Producto.setDosis(int dosis) {
        this.dosis = dosis;
    }
    
    public String Producto.getDni() {
        return this.dni;
    }
    
    public void Producto.setDni(String dni) {
        this.dni = dni;
    }
    
    public Boolean Producto.getActivo() {
        return this.activo;
    }
    
    public void Producto.setActivo(Boolean activo) {
        this.activo = activo;
    }
    
}
