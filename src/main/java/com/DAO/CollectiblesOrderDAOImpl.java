package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Collectible_Order;

public class CollectiblesOrderDAOImpl implements CollectiblesOrderDao {
	
	private Connection conn;

	public CollectiblesOrderDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	
	@Override
	public boolean saveOrder(List<Collectible_Order> clist) {
		boolean f = false;
		try {
			
			String sql = "insert into col_order(order_id, user_name, email, address, phno, heading, description, price, payment) values(?,?,?,?,?,?,?,?,?)";
			conn.setAutoCommit(false);
			
			PreparedStatement ps = conn.prepareStatement(sql);
			
			for(Collectible_Order c: clist)
			{
				ps.setString(1, c.getOrderId());
				ps.setString(2, c.getUserName());
				ps.setString(3, c.getEmail());
				ps.setString(4, c.getFulladd());
				ps.setString(5, c.getPhno());
				ps.setString(6, c.getHeading());
				ps.setString(7, c.getDescription());
				ps.setString(8, c.getPrice());
				ps.setString(9, c.getPaymentType());
				
				ps.addBatch();
			}
			int[] count = ps.executeBatch();
			conn.commit();
			f = true;
			conn.setAutoCommit(true);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}


	@Override
	public List<Collectible_Order> getCollectible(String email) {
		List<Collectible_Order> list = new ArrayList<Collectible_Order>();
		Collectible_Order o = null;
		
		try {
			String sql = "select * from col_order where email=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				o = new Collectible_Order();
				o.setId(rs.getInt(1));
				o.setOrderId(rs.getString(2));
				o.setUserName(rs.getString(3));
				o.setEmail(rs.getString(4));
				o.setFulladd(rs.getString(5));
				o.setPhno(rs.getString(6));
				o.setHeading(rs.getString(7));
				o.setDescription(rs.getString(8));
				o.setPrice(rs.getString(9));
				o.setPaymentType(rs.getString(10));
				list.add(o);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
		
	}


	@Override
	public List<Collectible_Order> getAllOrder() {
		
		List<Collectible_Order> list = new ArrayList<Collectible_Order>();
		Collectible_Order o = null;
		
		try {
			String sql = "select * from col_order";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				o = new Collectible_Order();
				o.setId(rs.getInt(1));
				o.setOrderId(rs.getString(2));
				o.setUserName(rs.getString(3));
				o.setEmail(rs.getString(4));
				o.setFulladd(rs.getString(5));
				o.setPhno(rs.getString(6));
				o.setHeading(rs.getString(7));
				o.setDescription(rs.getString(8));
				o.setPrice(rs.getString(9));
				o.setPaymentType(rs.getString(10));
				list.add(o);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
		
	}
	
	
	
	

}
