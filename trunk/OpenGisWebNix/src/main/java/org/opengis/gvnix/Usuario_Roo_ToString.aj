// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.opengis.gvnix;

import java.lang.String;

privileged aspect Usuario_Roo_ToString {
    
    public String Usuario.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Activo: ").append(getActivo()).append(", ");
        sb.append("Apellidos: ").append(getApellidos()).append(", ");
        sb.append("Cp: ").append(getCp()).append(", ");
        sb.append("Direccion: ").append(getDireccion()).append(", ");
        sb.append("Dni: ").append(getDni()).append(", ");
        sb.append("Email: ").append(getEmail()).append(", ");
        sb.append("Fecha_de_Nacimiento: ").append(getFecha_de_Nacimiento() == null ? "null" : getFecha_de_Nacimiento().getTime()).append(", ");
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Nombre: ").append(getNombre()).append(", ");
        sb.append("Password: ").append(getPassword()).append(", ");
        sb.append("Poblacion: ").append(getPoblacion()).append(", ");
        sb.append("Provincia: ").append(getProvincia()).append(", ");
        sb.append("Telefono: ").append(getTelefono()).append(", ");
        sb.append("Version: ").append(getVersion());
        return sb.toString();
    }
    
}
