package addressBook;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.annotation.JsonProperty;

import jakarta.persistence.Column;

@RestController
public class RController {
     
	@Autowired
	AddRepo repo;
	
	@PostMapping("/submission")
	String show1(@RequestParam("fname") String fn,@RequestParam("mname") String mn,@RequestParam("lname") String ln,@RequestParam("mnum") long mnu,@RequestParam("mailid") String mail, @RequestParam("address") String addr,@RequestParam("Notes") String Nots) {
		addressDetails a1=new addressDetails();
		a1.setFname(fn);
		a1.setMname(mn);
		a1.setLname(ln);
		a1.setMnum(mnu);
		a1.setMailid(mail);
		a1.setAddress(addr);
		a1.setNotes(Nots);
		
		repo.save(a1);
		String sss="Data has been successfully Saved to Database   ";
		return sss;
		
	}
	
	@GetMapping("/fetchByFname")
	List<addressDetails> show11(@RequestParam("fname") String fname){
		return repo.findByFname(fname);
	}

	@GetMapping("/fetchByLname")
	List<addressDetails> show12(@RequestParam("lname") String lname){
		return repo.findByLname(lname);
	}

}
