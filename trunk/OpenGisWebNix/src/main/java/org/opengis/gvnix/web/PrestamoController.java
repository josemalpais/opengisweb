package org.opengis.gvnix.web;

import org.opengis.gvnix.Prestamo;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "prestamoes", formBackingObject = Prestamo.class)
@RequestMapping("/prestamoes")
@Controller
public class PrestamoController {
}
