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
	public String loginerror (Model model){
		model.addAttribute("error", "true");
		return "login/login";
	}
	@RequestMapping("/logout")
	public String logout(){
		return "login/login";
	}
	@Deprecated
	public static final String SPRING_SECURITY_LAST_USERNAME_KEY =
	           "SPRING_SECURITY_LAST_USERNAME";
	
	
	

}
