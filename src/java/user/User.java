package user;

public class User {

	
	private String name;
	private int id;
	private String address;
	private String email;
	 private String contactNo;
	 private String password;
	 
	 
	 
	 public User(String name, int id, String address, String email, String contactNo, String password) {
		super();
		this.name = name;
		this.id = id;
		this.address = address;
		this.email = email;
		this.contactNo = contactNo;
		this.password = password;
	}
	 
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContactNo() {
		return contactNo;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	 
	 
	 
	
}
