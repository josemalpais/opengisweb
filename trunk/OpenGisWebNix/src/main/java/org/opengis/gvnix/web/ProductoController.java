package org.opengis.gvnix.web;

import org.opengis.gvnix.Producto;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "productoes", formBackingObject = Producto.class)
@RequestMapping("/productoes")
@Controller
public class ProductoController {
}
