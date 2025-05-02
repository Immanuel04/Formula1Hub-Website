package com.DAO;

import java.util.List;

import com.entity.CollectionDetails;

public interface CollectiblesDao {
	
	public boolean addCollectibles(CollectionDetails c);
	
	public List<CollectionDetails> getAllCollectibles();
	
	public CollectionDetails getCollectiblesById(int id);
	
	public boolean updateEditCollectibles(CollectionDetails c);
	
	public boolean deleteCollectibles(int id);
	
	public List<CollectionDetails> getNewCollectibles();
	
	public List<CollectionDetails> getLatestCollectibles();
	
	public List<CollectionDetails> getVintageCollectibles();
	
	public List<CollectionDetails> getAllLatestCollectibles();
	
	public List<CollectionDetails> getAllNewCollectibles();
	
	public List<CollectionDetails> getAllVintageCollectibles();
	
	public List<CollectionDetails> getCollectibleBySearch(String ch);

}
