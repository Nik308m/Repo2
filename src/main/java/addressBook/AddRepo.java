package addressBook;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface AddRepo extends JpaRepository<addressDetails, Integer> {

	
	List<addressDetails> findByFname(String fname);//Query DSL
	List<addressDetails> findByLname(String lname);
}
