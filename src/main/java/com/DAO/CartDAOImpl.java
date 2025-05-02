package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Cart;

public class CartDAOImpl implements CartDao{

	private Connection conn;
	public CartDAOImpl(Connection conn)
	{
		this.conn=conn;
	}
	
	@Override
	public boolean addCart(Cart c) {
		boolean f = false;
		try {
			String sql = "insert into cart(itemid,uid,heading,description,price,total_price) values(?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, c.getItemid());
			ps.setInt(2, c.getUid());
			ps.setString(3, c.getHeading());
			ps.setString(4, c.getDescription());
			ps.setDouble(5, c.getPrice());
			ps.setDouble(6, c.getTotalPrice());
			
			int i = ps.executeUpdate();
			if(i==1)
			{
				f = true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}

	@Override
	public List<Cart> getCollectiblesByUser(int userId) {
		List<Cart> list = new ArrayList<Cart>();
		Cart c = null;
		double totalPrice = 0;
		try {
			String sql = "select * from cart where uid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, userId);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				c = new Cart();
				c.setCid(rs.getInt(1));
				c.setItemid(rs.getInt(2));
				c.setUid(rs.getInt(3));
				c.setHeading(rs.getString(4));
				c.setDescription(rs.getString(5));
				c.setPrice(rs.getDouble(6));

				totalPrice = totalPrice + rs.getDouble(7);
				c.setTotalPrice(totalPrice);
				
				list.add(c);

			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public boolean deleteCollectible(int itemid, int uid, int cid) {
		boolean f = false;
		
		try {
			String sql = "delete from cart where itemid=? and uid=? and cid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, itemid);
			ps.setInt(2, uid);
			ps.setInt(3, cid);
			int i = ps.executeUpdate();
			if(i==1)
			{
				f = true;
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	
	
	
	
}
