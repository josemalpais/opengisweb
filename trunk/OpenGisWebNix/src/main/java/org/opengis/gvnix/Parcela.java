package org.opengis.gvnix;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Max;
import org.opengis.gvnix.Usuario;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooEntity(identifierColumn = "idParcela", finders = { "findParcelasByProvincia", "findParcelasByPoblacion", "findParcelasByPoligono", "findParcelasByNumero", "findParcelasByPartida", "findParcelasByPropietario", "findParcelasByProvinciaAndPoblacionAndNumero" })
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

    @Value("True")
    private Boolean activo;

    @NotNull
    @Max(999L)
    private int partida;

    @NotNull
    @ManyToOne
    private Usuario propietario;
}
