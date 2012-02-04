package org.opengis.gvnix;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;

import javax.validation.constraints.Max;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Calendar;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.beans.factory.annotation.Value;
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
    @Size(max = 30)
    private String Apellidos;
    
    @Size(min = 9, max = 9)
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
    @Max(99999L)
    @Size(min = 5, max = 5)
    private int Cp;

    @NotNull
    @Size(max = 30)
    private String Email;

    @NotNull
    @Size(max = 10)
    private String Password;

    @NotNull
    @Value("True")
    private Boolean Activo;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Calendar Fecha_de_Nacimiento;
}
