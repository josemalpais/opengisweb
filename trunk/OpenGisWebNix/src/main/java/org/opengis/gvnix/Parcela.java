package org.opengis.gvnix;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Max;

@RooJavaBean
@RooToString
@RooEntity(identifierColumn = "idParcela")
public class Parcela {

    @NotNull
    private String Alias;

    @NotNull
    @Max(999L)
    private int provincia;

    @NotNull
    @Max(999L)
    private int poblacion;

    @NotNull
    @Max(999L)
    private int poligono;

    @NotNull
    @Max(99999L)
    private int numero;

    @NotNull
    private Boolean activo;

    @NotNull
    @Max(999L)
    private int partida;

    @NotNull
    private String dniPropietario;
}
