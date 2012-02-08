package org.opengis.gvnix;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.opengis.gvnix.enumerated.Tarea;

import javax.persistence.Enumerated;
import javax.persistence.EnumType;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooEntity
public class Producto {

    @NotNull
    private int idprod;

    @NotNull
    @Size(max = 25)
    private String nombre;

    @NotNull
    @Size(max = 140)
    private String descripcion;

    @Enumerated(EnumType.STRING)
    private Tarea nomtarea;

    @NotNull
    private int dosis;

    @NotNull
    @ManyToOne
    private Usuario usuario;
    
    @Value("True")
    private Boolean activo;
}
