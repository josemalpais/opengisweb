package org.opengis.gvnix.web;

import org.opengis.gvnix.Dispositivo;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "dispositivoes", formBackingObject = Dispositivo.class)
@RequestMapping("/dispositivoes")
@Controller
public class DispositivoController {
}
