package addressBook;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Component;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;


@Entity
@Component
public class addressDetails {
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	long ID;
    @Column (name="fname")
	String fname;
    @Column (name="mname")
	String mname;
    @Column (name="lname")
	String lname;
    @Column (name="mnum")
	long mnum;
    @Column (name="mailid")
	String mailid;
    @Column (name="address")
	String address;
    @Column (name="Notes")
	String Notes;
	
	
	addressDetails(){
		
	}
	public long getID() {
		return ID;
	}
	public void setID(long id) {
		
        	this.ID=ID;
	}
	
	
	
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		/*System.out.println("Please Enter the First Name");
		Scanner sc1= new Scanner(System.in);
		String st1=sc1.nextLine();*/
		this.fname = fname;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		/*System.out.println("Please Enter the Middle Name");
		Scanner sc1= new Scanner(System.in);
		String st1=sc1.nextLine();*/
		this.mname = mname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		/*System.out.println("Please Enter the Last Name");
		Scanner sc1= new Scanner(System.in);
		String st1=sc1.nextLine();*/
		this.lname = lname;
	}
	public long getMnum() {
		return mnum;
	}
	public void setMnum(long mnum) {
		
		/*boolean b0=true;
		  while(b0) {
				System.out.println("Please Enter Mobile Number");
				Scanner sc7=new Scanner(System.in);
				String smnum=sc7.nextLine();
				//(0/91): number starts with (0/91)  
				//[7-9]: starting of the number may contain a digit between 0 to 9  
				//[0-9]: then contains digits 0 to 9  
				Pattern ptrn = Pattern.compile("(0/91)?[7-9][0-9]{9}");
				//the matcher() method creates a matcher that will match the given input against this pattern  
				Matcher match = ptrn.matcher(smnum);  
				//returns a boolean value
				if((match.find() && match.group().equals(smnum))) {
					long k=Long.parseLong(smnum);
					this.mnum = k;
					System.out.println("Mobile Number Successfully Updated");
					b0=false;
				}
				else {
					System.out.println("Please enter a valid Indian Mobile Number");
				}
		*/
		
		this.mnum = mnum;
	}
//	}
		  
		  
	public String getMailid() {
		return mailid;
	}
	public void setMailid(String mailid) {
		
	/*	boolean b1=true;
		
		while(b1) {
			
			
			System.out.println("Please Enter  Email ID");
			Scanner sc8=new Scanner(System.in);
			String mailid=sc8.nextLine();
			
			String regexPattern="^(?=.{1,64}@)[A-Za-z0-9_-]+(\\.[A-Za-z0-9_-]+)*@" 
			        + "[^-][A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*(\\.[A-Za-z]{2,})$";
			if(Pattern.compile(regexPattern).matcher(mailid).matches()){
				this.mailid = mailid;
				System.out.println("Email ID Successfully Updated");
				b1=false;
			}
			else {
				System.out.println("Invalid Email ID!!! Please Enter a Valid Email Address");
			}
			//sc8.close();
		}
		
		*/
		this.mailid = mailid;
	}
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		
	/*	System.out.println("Please Enter Address");
		Scanner sc10=new Scanner(System.in);
		String address=sc10.nextLine();*/
		this.address = address;
	}
	public String getNotes() {
		return Notes;
	}
	public void setNotes(String n) {
		

	/*	System.out.println("Please Enter any Additional Contact Information you want to Add");
		Scanner sc10=new Scanner(System.in);
		String n=sc10.nextLine();*/
		this.Notes = n;
		
	}
	
/*	void addInfo() {
		
		setFname();
		setMname();
		setLname();
		setMnum();
		setMailid();
		setAddress();
		setNotes();
		
	}*/
	
	void getInfo()
	{
		getFname();
		getMname();
		getLname();
		getMnum();
		getMailid();
		getAddress();
		getNotes();
		
		
	}
	
	
}
