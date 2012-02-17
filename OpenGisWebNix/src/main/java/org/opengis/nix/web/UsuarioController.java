package org.opengis.nix.web;

import org.opengis.nix.Usuario;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "usuarios", formBackingObject = Usuario.class)
@RequestMapping("/usuarios")
@Controller
public class UsuarioController {
}
