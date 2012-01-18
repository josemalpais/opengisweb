package ogg;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooEntity
public class Usuarios {

    @NotNull
    @Size(min = 9, max = 10)
    private String DNI;

    @NotNull
    @Size(min = 2, max = 30)
    private String Nombre;

    @NotNull
    @Size(min = 2, max = 50)
    private String Apellidos;

    @NotNull
    @Size(min = 1, max = 40)
    private String EMAIL;

    @NotNull
    @Size(min = 3, max = 16)
    private String Password;

    @NotNull
    @Size(min = 1, max = 15)
    private String Telefono;

    @NotNull
    @Size(min = 3, max = 30)
    private String Direccion;

    @NotNull
    @Size(min = 1, max = 30)
    private String Poblacion;

    @NotNull
    @Size(min = 1, max = 20)
    private String Provincia;

    @NotNull
    @Size(min = 5, max = 5)
    private String CP;

    @NotNull
    @Size(min = 6, max = 30)
    private String FechaNacimiento;
}
