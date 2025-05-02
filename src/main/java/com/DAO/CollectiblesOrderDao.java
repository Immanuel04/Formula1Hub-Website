package com.DAO;

import java.util.List;

import com.entity.Collectible_Order;

public interface CollectiblesOrderDao {
		
	public boolean saveOrder(List<Collectible_Order> c);
	
	public List<Collectible_Order> getCollectible(String email);
	
	public List<Collectible_Order> getAllOrder();

}
