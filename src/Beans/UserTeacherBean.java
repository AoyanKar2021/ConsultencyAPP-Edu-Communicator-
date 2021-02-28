package Beans;

public class UserTeacherBean {
	public UserTeacherBean() {
		super();
	}
	private String  firstname;
	private String  lastname;
	private String  username;		
	private String  email;
	private String  gender;
	private String  password;
	private String  confirmpassword;
	private String  role;
	private String  achivement;
	private String  result;
	private String  Experience;
	private String  dob;
//	========================== Constructor ===========================	
	public UserTeacherBean(String firstname, String lastname, String username, String email, String gender,
			String password, String confirmpassword, String role, String achivement, String result, String experience,String dob) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.username = username;
		this.email = email;
		this.gender = gender;
		this.password = password;
		this.confirmpassword = confirmpassword;
		this.role = role;
		this.achivement = achivement;
		this.result = result;
		this.Experience = experience;
		this.dob=dob;
	}
	

	//	========================== Getter and Setter ===========================
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
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
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getAchivement() {
		return achivement;
	}
	public void setAchivement(String achivement) {
		this.achivement = achivement;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getExperience() {
		return Experience;
	}
	public void setExperience(String experience) {
		Experience = experience;
	}
}
