package com.DAO;

import java.util.List;
import com.entity.Cart;

public interface CartDao {
	
	public boolean addCart(Cart c);
	
	public List<Cart> getCollectiblesByUser(int userId);
	
	public boolean deleteCollectible(int itemid, int uid, int cid);
}
