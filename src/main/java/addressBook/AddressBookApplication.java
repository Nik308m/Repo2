package addressBook;
import addressBook.*;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class AddressBookApplication {

	public static void main(String[] args) {
		SpringApplication.run(AddressBookApplication.class, args);
		addressDetails a1=new addressDetails();
	/*	a1.addInfo();
		a1.getInfo();*/
	}

}
