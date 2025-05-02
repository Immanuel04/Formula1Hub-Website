package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.CollectionDetails;

public class CollectiblesDAOImpl implements CollectiblesDao {

	private Connection conn;

	public CollectiblesDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public boolean addCollectibles(CollectionDetails c) {
		boolean f = false; 
		try {
			String sql = "insert into item_details(heading,description,price,category,status,photo,user_email) values (?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, c.getHeading());
			ps.setString(2, c.getDescription());
			ps.setString(3, c.getPrice());
			ps.setString(4, c.getCategory());
			ps.setString(5, c.getStatus());
			ps.setString(6, c.getPhotoName());
			ps.setString(7, c.getEmail());
	                         		
			
			int i = ps.executeUpdate();
			if(i == 1) {
				f = true;
			}			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public List<CollectionDetails> getAllCollectibles() {
		List<CollectionDetails> list = new ArrayList<CollectionDetails>();
		CollectionDetails c = null;
				
		try {
			String sql = "select * from item_details";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				c = new CollectionDetails();
				c.setItemid(rs.getInt(1));
				c.setHeading(rs.getString(2));
				c.setDescription(rs.getString(3));
				c.setPrice(rs.getString(4));
				c.setCategory(rs.getString(5));
				c.setStatus(rs.getString(6));
				c.setPhotoName(rs.getString(7));
				c.setEmail(rs.getString(8));
				list.add(c);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public CollectionDetails getCollectiblesById(int id) {
		
		CollectionDetails c = null;
		try {
			String sql = "select * from item_details where itemid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				c = new CollectionDetails();
				c.setItemid(rs.getInt(1));
				c.setHeading(rs.getString(2));
				c.setDescription(rs.getString(3));
				c.setPrice(rs.getString(4));
				c.setCategory(rs.getString(5));
				c.setStatus(rs.getString(6));
				c.setPhotoName(rs.getString(7));
				c.setEmail(rs.getString(8));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return c;
	}

	@Override
	public boolean updateEditCollectibles(CollectionDetails c) {
		boolean f = false;
		try {
			String sql = "update item_details set heading =?, description=?, price=?, status=? where itemid = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, c.getHeading());
			ps.setString(2, c.getDescription());
			ps.setString(3, c.getPrice());
			ps.setString(4, c.getStatus());
			ps.setInt(5, c.getItemid());
			
			int i = ps.executeUpdate();
			if(i == 1)
			{
				f = true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public boolean deleteCollectibles(int id) {
		boolean f = false;
		try {
			String sql = "delete from item_details where itemid = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			int i = ps.executeUpdate();
			if(i==1) 
			{
				f = true;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return f;
	}

	@Override
	public List<CollectionDetails> getNewCollectibles() {
		List<CollectionDetails> list = new ArrayList<CollectionDetails>();
		CollectionDetails c = null;
		try {
			String sql = "select * from item_details where category = ? and status = ? order by itemid DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "New");
			ps.setString(2, "Active");
			ResultSet rs = ps.executeQuery();
			int i =1;
			while(rs.next() && i<=4)
			{
				c = new CollectionDetails();
				c.setItemid(rs.getInt(1));
				c.setHeading(rs.getString(2));
				c.setDescription(rs.getString(3));
				c.setPrice(rs.getString(4));
				c.setCategory(rs.getString(5));
				c.setStatus(rs.getString(6));
				c.setPhotoName(rs.getString(7));
				c.setEmail(rs.getString(8));
				list.add(c);
				i++;
			}
		}catch(Exception e) {
			e.printStackTrace();
		} 
		
		return list;
	}

	@Override
	public List<CollectionDetails> getLatestCollectibles() {
		List<CollectionDetails> list = new ArrayList<CollectionDetails>();
		CollectionDetails c = null;
		try {
			String sql = "select * from item_details where status=? order by itemid DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Active");
			ResultSet rs = ps.executeQuery();
			int i =1;
			while(rs.next() && i<=4)
			{
				c = new CollectionDetails();
				c.setItemid(rs.getInt(1));
				c.setHeading(rs.getString(2));
				c.setDescription(rs.getString(3));
				c.setPrice(rs.getString(4));
				c.setCategory(rs.getString(5));
				c.setStatus(rs.getString(6));
				c.setPhotoName(rs.getString(7));
				c.setEmail(rs.getString(8));
				list.add(c);
				i++;
			}
		}catch(Exception e) {
			e.printStackTrace();
		} 
		
		return list;
			
	}

	@Override
	public List<CollectionDetails> getVintageCollectibles() {
		List<CollectionDetails> list = new ArrayList<CollectionDetails>();
		CollectionDetails c = null;
		try {
			String sql = "select * from item_details where category = ? and status = ? order by itemid DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Vintage");
			ps.setString(2, "Active");
			ResultSet rs = ps.executeQuery();
			int i =1;
			while(rs.next() && i<=4)
			{
				c = new CollectionDetails();
				c.setItemid(rs.getInt(1));
				c.setHeading(rs.getString(2));
				c.setDescription(rs.getString(3));
				c.setPrice(rs.getString(4));
				c.setCategory(rs.getString(5));
				c.setStatus(rs.getString(6));
				c.setPhotoName(rs.getString(7));
				c.setEmail(rs.getString(8));
				list.add(c);
				i++;
			}
		}catch(Exception e) {
			e.printStackTrace();
		} 
		
		return list;
	}
	

	
	@Override
	public List<CollectionDetails> getAllLatestCollectibles() {
		List<CollectionDetails> list = new ArrayList<CollectionDetails>();
		CollectionDetails c = null;
		try {
			String sql = "select * from item_details where status=? order by itemid DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Active");
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				c = new CollectionDetails();
				c.setItemid(rs.getInt(1));
				c.setHeading(rs.getString(2));
				c.setDescription(rs.getString(3));
				c.setPrice(rs.getString(4));
				c.setCategory(rs.getString(5));
				c.setStatus(rs.getString(6));
				c.setPhotoName(rs.getString(7));
				c.setEmail(rs.getString(8));
				list.add(c);
			}
		}catch(Exception e) {
			e.printStackTrace();
		} 
		
		return list;
	}

	
	@Override
	public List<CollectionDetails> getAllNewCollectibles() {
		List<CollectionDetails> list = new ArrayList<CollectionDetails>();
		CollectionDetails c = null;
		try {
			String sql = "select * from item_details where category = ? and status = ? order by itemid DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "New");
			ps.setString(2, "Active");
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				c = new CollectionDetails();
				c.setItemid(rs.getInt(1));
				c.setHeading(rs.getString(2));
				c.setDescription(rs.getString(3));
				c.setPrice(rs.getString(4));
				c.setCategory(rs.getString(5));
				c.setStatus(rs.getString(6));
				c.setPhotoName(rs.getString(7));
				c.setEmail(rs.getString(8));
				list.add(c);
			}
		}catch(Exception e) {
			e.printStackTrace();
		} 
		
		return list;
	}

	@Override
	public List<CollectionDetails> getAllVintageCollectibles() {
		List<CollectionDetails> list = new ArrayList<CollectionDetails>();
		CollectionDetails c = null;
		try {
			String sql = "select * from item_details where category = ? and status = ? order by itemid DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Vintage");
			ps.setString(2, "Active");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				c = new CollectionDetails();
				c.setItemid(rs.getInt(1));
				c.setHeading(rs.getString(2));
				c.setDescription(rs.getString(3));
				c.setPrice(rs.getString(4));
				c.setCategory(rs.getString(5));
				c.setStatus(rs.getString(6));
				c.setPhotoName(rs.getString(7));
				c.setEmail(rs.getString(8));
				list.add(c);
			}
		}catch(Exception e) {
			e.printStackTrace();
		} 
		
		return list;
	}

	@Override
	public List<CollectionDetails> getCollectibleBySearch(String ch) {
		
		List<CollectionDetails> list = new ArrayList<CollectionDetails>();
		CollectionDetails c = null;
		try {
			String sql = "select * from item_details where heading like ? or description like ? or category like ? and status=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "%"+ch+"%");
			ps.setString(2, "%"+ch+"%");
			ps.setString(3, "%"+ch+"%");
			ps.setString(4, "Active");
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				c = new CollectionDetails();
				c.setItemid(rs.getInt(1));
				c.setHeading(rs.getString(2));
				c.setDescription(rs.getString(3));
				c.setPrice(rs.getString(4));
				c.setCategory(rs.getString(5));
				c.setStatus(rs.getString(6));
				c.setPhotoName(rs.getString(7));
				c.setEmail(rs.getString(8));
				list.add(c);
			}
		}catch(Exception e) {
			e.printStackTrace();
		} 
		
		return list;
		
	}
	
	
	
	
	
}
