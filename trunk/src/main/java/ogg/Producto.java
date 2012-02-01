package ogg;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import ogg.ogg.enumerated.Tipotarea;
import javax.persistence.Enumerated;
import javax.persistence.EnumType;

@RooJavaBean
@RooToString
@RooEntity
public class Producto {

    @NotNull
    private int ID;

    @NotNull
    private String Nombre;

    @Enumerated(EnumType.STRING)
    private Tipotarea Tarea;

    @NotNull
    private int Dosis;

    @NotNull
    private String DNI;

    @NotNull
    @Size(max = 100)
    private String Descripcion;
}
