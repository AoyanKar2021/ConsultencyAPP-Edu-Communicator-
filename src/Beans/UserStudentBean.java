package Beans;

public class UserStudentBean  {
	private String  firstname;
	private String  lastname;
	private String  username;	
	private String 	DateOFBirth;
	
	
	private String  email;
	private String  gender;
	private String  password;
	private String  confirmpassword;
	private String  role;
	private String  FatherName;
	private String  MotherName;
	private String  ParentNumber;
//	Conostructor
	
	
	public UserStudentBean(String firstname, String lastname, String username, String dateOFBirth, String email,
			String gender, String password, String confirmpassword, String role, String fatherName, String motherName,
			String parentNumber) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.username = username;
		DateOFBirth = dateOFBirth;
		this.email = email;
		this.gender = gender;
		this.password = password;
		this.confirmpassword = confirmpassword;
		this.role = role;
		FatherName = fatherName;
		MotherName = motherName;
		ParentNumber = parentNumber;
	}
	
	
	
public UserStudentBean() {
	super();
	
}



//=============================	Getter and Setter=======================
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmpassword() {
		return confirmpassword;
	}
	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}
	public String getDateOFBirth() {
		return DateOFBirth;
	}
	public void setDateOFBirth(String dateOFBirth) {
		DateOFBirth = dateOFBirth;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getFatherName() {
		return FatherName;
	}
	public void setFatherName(String fatherName) {
		FatherName = fatherName;
	}
	public String getMotherName() {
		return MotherName;
	}
	public void setMotherName(String motherName) {
		MotherName = motherName;
	}
	public String getParentNumber() {
		return ParentNumber;
	}
	public void setParentNumber(String parentNumber) {
		ParentNumber = parentNumber;
	}
	

	
}
