

public class Member {
	
	private String uname,DateOfBirth,phone,email,password;
	
	
	public Member() {
		super();
	}


	

	public Member(String uname,String dateOfBirth,String phone, String email,String password ) {
		super();
		this.uname = uname;
		this.DateOfBirth = dateOfBirth;
		this.phone = phone;
		this.email = email;
		this.password = password;
		
	}




	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getDateOfBirth() {
		return DateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		DateOfBirth = dateOfBirth;
	}
	

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}
