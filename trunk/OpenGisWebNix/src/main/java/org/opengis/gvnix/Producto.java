package org.opengis.gvnix;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.opengis.gvnix.domain.enumerated.Tarea;
import javax.persistence.Enumerated;
import javax.persistence.EnumType;

@RooJavaBean
@RooToString
@RooEntity
public class Producto {

    @NotNull
    private int idprod;

    @NotNull
    @Size(max = 40)
    private String nombre;

    @NotNull
    @Size(max = 1000)
    private String descripcion;

    @Enumerated(EnumType.STRING)
    private Tarea nomtarea;

    @NotNull
    private int dosis;

    @NotNull
    @Size(max = 9)
    private String dni;

    private Boolean activo;
}
