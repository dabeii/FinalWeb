package Models;

public class Product {
	private int id;
	private String pid;
	private String name;
	private String image;
	private int price;
	private int quantity;
	private String type;
	
	public Product() {
		
	}
	public Product(int id, String pid, String name, String image, int price, int quantity, String type)
	{
		this.id= id;
		this.pid=pid;
		this.name=name;
		this.image=image;
		this.price=price;
		this.quantity=quantity;
		this.type=type;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
}
