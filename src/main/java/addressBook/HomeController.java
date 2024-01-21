package addressBook;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import  addressBook.addressDetails;


@Controller
public class HomeController {
	
	HomeController(){
		
	}
		
	List<addressDetails> alist= new ArrayList();
	@PostMapping("/{ID}")
	//@ResponseBody
	String show(@PathVariable ("ID") String ID) {
		
		return ("Ths is a POST String "+ID);
	}
	
	@GetMapping("/FetchByFirstName")
	String show1(@ModelAttribute addressDetails a ) {
		
		//return "HomePage.jsp" ;
		return "FetchByFirstName.jsp";
		
	}
	
	@GetMapping("/FetchByLastName")
	String show2(@ModelAttribute addressDetails a ) {
		
		//return "HomePage.jsp" ;
		return "FetchByLastName.jsp";
		
	}
	
	
	@GetMapping("/SubmitPage")
	String show3(@ModelAttribute addressDetails a ) {
		
		//return "HomePage.jsp" ;
		return "SubmissonPage.jsp";
		
	}
	

	@GetMapping("/")
	String show4(@ModelAttribute addressDetails a ) {
		
		//return "HomePage.jsp" ;
		return "NewHomePage.jsp";
		
	}


	
}
