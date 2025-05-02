package com.entity;

public class CollectionDetails {
	
	private int itemid;
	private String heading;
	private String description;
	private String price;
	private String category;
	private String status;
	private String photoName;
	private String email;
	public CollectionDetails(String heading, String description, String price, String category, String status,
			String photoName, String email) {
		super();
		this.heading = heading;
		this.description = description;
		this.price = price;
		this.category = category;
		this.status = status;
		this.photoName = photoName;
		this.email = email;
	}
	public CollectionDetails() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getItemid() {
		return itemid;
	}
	public void setItemid(int itemid) {
		this.itemid = itemid;
	}
	public String getHeading() {
		return heading;
	}
	public void setHeading(String heading) {
		this.heading = heading;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPhotoName() {
		return photoName;
	}
	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "CollectionDetails [itemid=" + itemid + ", heading=" + heading + ", description=" + description
				+ ", price=" + price + ", category=" + category + ", status=" + status + ", photoName=" + photoName
				+ ", email=" + email + "]";
	}
	
	
	

}
