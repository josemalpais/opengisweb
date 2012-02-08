package org.opengis.gvnix.web;

import org.opengis.gvnix.Apero;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "aperoes", formBackingObject = Apero.class)
@RequestMapping("/aperoes")
@Controller
public class AperoController {
}
