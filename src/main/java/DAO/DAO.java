package DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

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
	
	public void addProduct(String pid, String name, String image, int price, int quantity, String type)
	{
		String query="INSERT INTO Product (id,product_id,name,image,price,quantity,type) VALUES(default,?,?,?,?,?,?)";
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
		}catch(Exception e)
		{
			e.getStackTrace();
		}
	}
}
