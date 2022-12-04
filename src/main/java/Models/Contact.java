package Models;

public class Contact {
	private String name;
	private String email;
	private long phone;
	private String mess;
	public Contact()
	{
		
	}
	public Contact(String name, String email, long phone, String mess)
	{
		this.name=name;
		this.email=email;
		this.phone=phone;
		this.mess=mess;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public String getMess() {
		return mess;
	}
	public void setMess(String mess) {
		this.mess = mess;
	}
}
