package mx.ipn.upiicsa.web.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@PreAuthorize("hasRole('ROLE_USER')")
public class inicioController {
@RequestMapping(value = "/", method = RequestMethod.GET )
 public String inicio(){
	return "index";
}

}

