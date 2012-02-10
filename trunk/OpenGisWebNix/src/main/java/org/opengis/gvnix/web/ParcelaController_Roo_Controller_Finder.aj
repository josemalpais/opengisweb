// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.opengis.gvnix.web;

import java.lang.String;
import org.opengis.gvnix.Parcela;
import org.opengis.gvnix.Usuario;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

privileged aspect ParcelaController_Roo_Controller_Finder {
    
    @RequestMapping(params = { "find=ByNumero", "form" }, method = RequestMethod.GET)
    public String ParcelaController.findParcelasByNumeroForm(Model uiModel) {
        return "parcelas/findParcelasByNumero";
    }
    
    @RequestMapping(params = "find=ByNumero", method = RequestMethod.GET)
    public String ParcelaController.findParcelasByNumero(@RequestParam("numero") int numero, Model uiModel) {
        uiModel.addAttribute("parcelas", Parcela.findParcelasByNumero(numero).getResultList());
        return "parcelas/list";
    }
    
    @RequestMapping(params = { "find=ByPartida", "form" }, method = RequestMethod.GET)
    public String ParcelaController.findParcelasByPartidaForm(Model uiModel) {
        return "parcelas/findParcelasByPartida";
    }
    
    @RequestMapping(params = "find=ByPartida", method = RequestMethod.GET)
    public String ParcelaController.findParcelasByPartida(@RequestParam("partida") int partida, Model uiModel) {
        uiModel.addAttribute("parcelas", Parcela.findParcelasByPartida(partida).getResultList());
        return "parcelas/list";
    }
    
    @RequestMapping(params = { "find=ByPoblacion", "form" }, method = RequestMethod.GET)
    public String ParcelaController.findParcelasByPoblacionForm(Model uiModel) {
        return "parcelas/findParcelasByPoblacion";
    }
    
    @RequestMapping(params = "find=ByPoblacion", method = RequestMethod.GET)
    public String ParcelaController.findParcelasByPoblacion(@RequestParam("poblacion") int poblacion, Model uiModel) {
        uiModel.addAttribute("parcelas", Parcela.findParcelasByPoblacion(poblacion).getResultList());
        return "parcelas/list";
    }
    
    @RequestMapping(params = { "find=ByPoligono", "form" }, method = RequestMethod.GET)
    public String ParcelaController.findParcelasByPoligonoForm(Model uiModel) {
        return "parcelas/findParcelasByPoligono";
    }
    
    @RequestMapping(params = "find=ByPoligono", method = RequestMethod.GET)
    public String ParcelaController.findParcelasByPoligono(@RequestParam("poligono") int poligono, Model uiModel) {
        uiModel.addAttribute("parcelas", Parcela.findParcelasByPoligono(poligono).getResultList());
        return "parcelas/list";
    }
    
    @RequestMapping(params = { "find=ByPropietario", "form" }, method = RequestMethod.GET)
    public String ParcelaController.findParcelasByPropietarioForm(Model uiModel) {
        uiModel.addAttribute("usuarios", Usuario.findAllUsuarios());
        return "parcelas/findParcelasByPropietario";
    }
    
    @RequestMapping(params = "find=ByPropietario", method = RequestMethod.GET)
    public String ParcelaController.findParcelasByPropietario(@RequestParam("propietario") Usuario propietario, Model uiModel) {
        uiModel.addAttribute("parcelas", Parcela.findParcelasByPropietario(propietario).getResultList());
        return "parcelas/list";
    }
    
    @RequestMapping(params = { "find=ByProvincia", "form" }, method = RequestMethod.GET)
    public String ParcelaController.findParcelasByProvinciaForm(Model uiModel) {
        return "parcelas/findParcelasByProvincia";
    }
    
    @RequestMapping(params = "find=ByProvincia", method = RequestMethod.GET)
    public String ParcelaController.findParcelasByProvincia(@RequestParam("provincia") int provincia, Model uiModel) {
        uiModel.addAttribute("parcelas", Parcela.findParcelasByProvincia(provincia).getResultList());
        return "parcelas/list";
    }
    
}
