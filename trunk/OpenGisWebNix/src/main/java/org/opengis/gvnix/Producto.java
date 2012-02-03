package org.opengis.gvnix;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;

import org.opengis.gvnix.ogg.enumerated.enumTarea;

import javax.persistence.Enumerated;
import javax.persistence.EnumType;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooEntity
public class Producto {

    @NotNull
    private int ID;

    @NotNull
    private String Nombre;

    @Enumerated(EnumType.STRING)
    private enumTarea Tarea;

    @NotNull
    private String DNI;

    @NotNull
    @Size(max = 100)
    private String Descripcion;
}
