package mx.ipn.upiicsa.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	@RequestMapping(value = "/login", method = RequestMethod.GET )
	public String inicio(){
		return "login/login";
	}	
	@RequestMapping("/loginfailed")
	public String loginerror (Model modelo){
		modelo.addAttribute("error", "true");
		return "login/loginfailed";
	}
	@RequestMapping("/logout")
	public String logout(){
		return "login/login";
	}	

}
