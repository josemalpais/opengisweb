package ogg;


import org.aspectj.lang.annotation.DeclareError;
import org.aspectj.lang.annotation.DeclareWarning;
import org.hibernate.validator.constraints.Length;
import org.junit.experimental.theories.DataPoint;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooEntity
public class Usuarios {

    @NotNull
    @Size(min = 9, max = 9)
    private String DNI;

    @NotNull
    @Size(min = 2, max = 20)
    private String Nombre;

    @NotNull
    @Size(min = 2, max = 25)
    private String Apellidos;

    @NotNull
    @Size(min = 1, max = 20)
    private String EMAIL;

    @NotNull
    @Size(min = 3, max = 10)
    private String Password;
     
    @NotNull
    @Digits(fraction=0, integer=9)
    private String Telefono;

    @NotNull
    @Size(min = 3, max = 25)
    private String Direccion;

    @NotNull
    @Size(min = 1, max = 30)
    private String Poblacion;

    @NotNull
    @Size(min = 1, max = 20)
    private String Provincia;

    @NotNull
    @Digits(fraction = 0, integer = 5)
    private String CP;

    @NotNull
    @DateTimeFormat
    private String FechaNacimiento;
}
