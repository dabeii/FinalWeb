package DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import Models.Account;
import Models.Contact;
import Models.Product;
import Uti.Connect2DB;

public class DAO {
	public List<Product> getAllproducts()
	{
		List<Product> list = new ArrayList<>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = Connect2DB.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from product");
			ResultSet rs= ps.executeQuery();
			while(rs.next())
			{
				list.add(new Product(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getInt(5),
						rs.getInt(6),
						rs.getString(7)
						));
			}
		}catch(Exception e)
		{
			e.getMessage();
		}
		return list;
	}
	
	public List<Account> getAllaccount()
	{
		List<Account> list = new ArrayList<>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = Connect2DB.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from login");
			ResultSet rs= ps.executeQuery();
			while(rs.next())
			{
				list.add(new Account(rs.getString(1),
						rs.getString(2),
						rs.getInt(3)
						));
			}
		}catch(Exception e)
		{
			e.getMessage();
		}
		return list;
	}
	public List<Contact> getAllcontact()
	{
		List<Contact> list = new ArrayList<>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = Connect2DB.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from contact");
			ResultSet rs= ps.executeQuery();
			while(rs.next())
			{
				list.add(new Contact(rs.getString(1),
						rs.getString(2),
						rs.getLong(3),
						rs.getString(4)
						));
			}
		}catch(Exception e)
		{
			e.getMessage();
		}
		return list;
	}
	
	public void addProduct(String pid, String name, String image, int price, int quantity, String type)
	{
		String query="INSERT INTO product (id,product_id,name,image,price,quantity,type) VALUES(default,?,?,?,?,?,?)";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = Connect2DB.getConnection();
			PreparedStatement ps= con.prepareStatement(query);
			ps.setString(1,pid);
			ps.setString(2,name);
			ps.setString(3,image);
			ps.setInt(4,price);
			ps.setInt(5,quantity);
			ps.setString(6,type);
			ps.executeUpdate();
			con.close();
		}catch(Exception e)
		{
			e.getStackTrace();
		}
	}
	public void editProduct(int id,String pid, String name, String image, int price, int quantity, String type)
	{
		String query="UPDATE product\n"
				+ "SET product_id = ?, name = ?, image = ?, price = ?, quantity = ? , type = ? \r\n"
				+ "WHERE id = ?";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = Connect2DB.getConnection();
			PreparedStatement ps= con.prepareStatement(query);
			ps.setString(1,pid);
			ps.setString(2,name);
			ps.setString(3,image);
			ps.setInt(4,price);
			ps.setInt(5,quantity);
			ps.setString(6,type);
			ps.setInt(7,id);
			ps.executeUpdate();
			con.close();
		}catch(Exception e)
		{
			e.getStackTrace();
		}
	}
	public void deleteProduct(int id)
	{
		String query="DELETE FROM product WHERE id= ?";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = Connect2DB.getConnection();
			PreparedStatement ps= con.prepareStatement(query);
			ps.setInt(1, id);
			ps.executeUpdate();
			con.close();
		}catch(Exception e)
		{
			e.getStackTrace();
		}
	}
	public List<Product> showCasual()
	{
		List<Product> list = new ArrayList<>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = Connect2DB.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from product where type = 'Casual' ");
			ResultSet rs= ps.executeQuery();
			while(rs.next())
			{
				list.add(new Product(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getInt(5),
						rs.getInt(6),
						rs.getString(7)
						));
			}
			con.close();
		}catch(Exception e)
		{
			e.getMessage();
		}
		return list;
	}
	public List<Product> showSport()
	{
		List<Product> list = new ArrayList<>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = Connect2DB.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from product where type = 'Sport' ");
			ResultSet rs= ps.executeQuery();
			while(rs.next())
			{
				list.add(new Product(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getInt(5),
						rs.getInt(6),
						rs.getString(7)
						));
			}
			con.close();
		}catch(Exception e)
		{
			e.getMessage();
		}
		return list;
	}
	public List<Product> showTouring()
	{
		List<Product> list = new ArrayList<>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = Connect2DB.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from product where type = 'Touring' ");
			ResultSet rs= ps.executeQuery();
			while(rs.next())
			{
				list.add(new Product(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getInt(5),
						rs.getInt(6),
						rs.getString(7)
						));
			}
			con.close();
		}catch(Exception e)
		{
			e.getMessage();
		}
		return list;
	}
	public Product getProduct(int id)
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = Connect2DB.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from product where id = ?");
			ps.setInt(1, id);
			ResultSet rs= ps.executeQuery();
			while(rs.next())
			{
				return new Product(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getInt(5),
						rs.getInt(6),
						rs.getString(7)
						);
			}
			con.close();
		}catch(Exception e)
		{
			e.getMessage();
		}
		return null;
	}
	public void contact(String name, String email, long phone, String mess)
	{
		String query="INSERT INTO contact VALUES(?,?,?,?)";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = Connect2DB.getConnection();
			PreparedStatement ps= con.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setLong(3, phone);
			ps.setString(4, mess);
			ps.executeUpdate();
			con.close();
		}catch(Exception e)
		{
			e.getStackTrace();
		}
	}
}
