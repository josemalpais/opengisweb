package org.opengis.gvnix;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Calendar;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@RooJavaBean
@RooToString
@RooEntity(identifierColumn = "idUsuario")
public class Usuario {

    @NotNull
    @Size(max = 9)
    private String Dni;

    @NotNull
    @Size(max = 30)
    private String Nombre;

    @NotNull
    @Size(max = 50)
    private String Apellidos;

    @NotNull
    @Size(max = 40)
    private String Email;

    @NotNull
    @Size(max = 40)
    private String Password;

    @NotNull
    @Size(max = 15)
    private String Tipo;

    private int Veces;

    @NotNull
    private int Telefono;

    @NotNull
    @Size(max = 30)
    private String Direccion;

    @NotNull
    @Size(max = 30)
    private String Poblacion;

    @NotNull
    @Size(max = 20)
    private String Provincia;

    @NotNull
    private int Cp;

    @NotNull
    private Boolean Activo;

    @NotNull
    @Size(max = 20)
    private String Idioma;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Calendar Fecha_de_Nacimiento;
}
