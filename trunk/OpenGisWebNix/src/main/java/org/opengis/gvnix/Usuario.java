package org.opengis.gvnix;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;

import javax.swing.JOptionPane;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Calendar;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.format.annotation.DateTimeFormat;
import org.opengis.gvnix.enumerated.TipoUser;
import javax.persistence.Enumerated;
import javax.persistence.EnumType;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@RooJavaBean
@RooToString
@RooEntity(identifierColumn = "idUsuario", finders = { "findUsuariosByDniLike", "findUsuariosByNombreLike", "findUsuariosByApellidosLike", "findUsuariosByTelefono", "findUsuariosByEmailLike", "findUsuariosByTipo" })
public abstract class Usuario implements Validator {

    @NotNull
    @Size(max = 9)
    private String Dni;

    @NotNull
    @Size(max = 30)
    private String Nombre;

    @NotNull
    @Size(max = 30)
    private String Apellidos;
    
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Calendar FechaDeNacimiento;

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
    private int Cp;

    @NotNull
    @Size(max = 30)
    private String Email;

    @NotNull
    @Size(max = 10)
    private String Password;
    
    private static boolean valido;

    public static Boolean getValido() {

		return valido;

	}
    
    @Override
    public void validate(Object target, Errors errors) {
         
    
    Usuario usuario = (Usuario) target;
    
    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Dni", "field.Dni.required",
            "El Dni es incorrecto");
     
    validarFormatoDni(usuario.Dni, errors);
    
    }
    
	private void validarFormatoDni (String Dni, Errors errors) {
        
		// TODO Auto-generated method stub
		
    	Dni = Dni.trim();
		int pletra = 0;
		String aux = ""; //$NON-NLS-1$
		String aux2 = ""; //$NON-NLS-1$
		String[] arrayLetra = { "T", "R", "W", "A", "G", "M", "Y", "F", "P", //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$ //$NON-NLS-4$ //$NON-NLS-5$ //$NON-NLS-6$ //$NON-NLS-7$ //$NON-NLS-8$ //$NON-NLS-9$
				"D", "X", "B", "N", "J", "Z", "S", "Q", "V", "H", "L", "C", //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$ //$NON-NLS-4$ //$NON-NLS-5$ //$NON-NLS-6$ //$NON-NLS-7$ //$NON-NLS-8$ //$NON-NLS-9$ //$NON-NLS-10$ //$NON-NLS-11$ //$NON-NLS-12$
				"K", "E", "T" }; //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
		if (Dni.length() != 9) {
			JOptionPane.showMessageDialog(null,
					"Hola"); //$NON-NLS-1$

			valido = false;
			//return errors;
		} else {
			for (int x = 0; x < 8; x++) {// este for nos cojera los 8 primeros
											// carácteres y los guardará en el
											// string aux
				aux = aux + Dni.charAt(x);
			}
			try {
				pletra = Integer.parseInt(aux); // si no fueran enteros
												// saldriamos
												// del metodo con un false
			} catch (NumberFormatException ex) {
				JOptionPane.showMessageDialog(null,
						"Hola"); //$NON-NLS-1$
				valido = false;
				//return errors;
			}
			pletra = pletra % 23;
			aux2 = Dni.charAt(Dni.length() - 1) + ""; //$NON-NLS-1$

			if (arrayLetra[pletra].equalsIgnoreCase(aux2)) {
				Dni = aux + arrayLetra[pletra];// lo colocamos en formato de 9
												// carácteres
				//return true;
			} else {
				JOptionPane.showMessageDialog(null,
						"Hola"); //$NON-NLS-1$
				valido = false;
				//return errors;
			}
		}
    
    }

    @Enumerated(EnumType.STRING)
    private TipoUser Tipo;
    
    @NotNull
    @Value("True")
    private Boolean Activo;


	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return Usuario.class.equals(clazz);
	}
}
