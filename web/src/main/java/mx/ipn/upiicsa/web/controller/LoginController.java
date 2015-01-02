package mx.ipn.upiicsa.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	@RequestMapping("/login")
	public String inicio(){
		return "login/login";
	}	
	@RequestMapping("/loginfailed")
	public String loginerror (Model model){
		model.addAttribute("message","true");
		return "login/login";
	}
	@RequestMapping("/logout")
	public String logout(){
		return "login/login";
	}
	
	
	

}
