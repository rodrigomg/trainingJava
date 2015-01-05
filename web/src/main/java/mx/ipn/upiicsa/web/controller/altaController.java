package mx.ipn.upiicsa.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/alta")
public class altaController {

  @RequestMapping("/inicio")
  public String inicio() {
    return "alta/inicio";
  }

}
