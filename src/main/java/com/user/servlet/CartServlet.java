package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CartDAOImpl;
import com.DAO.CollectiblesDAOImpl;
import com.DB.DBConnect;
import com.entity.Cart;
import com.entity.CollectionDetails;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			int itemid = Integer.parseInt(req.getParameter("itemid"));
			int uid = Integer.parseInt(req.getParameter("uid"));
			
			CollectiblesDAOImpl dao = new CollectiblesDAOImpl(DBConnect.getConn());
			CollectionDetails c = dao.getCollectiblesById(itemid);
			
			Cart ca = new Cart();
			ca.setItemid(itemid);
			ca.setUid(uid);
			ca.setHeading(c.getHeading());
			ca.setDescription(c.getDescription());
			ca.setPrice(Double.parseDouble(c.getPrice()));
			ca.setTotalPrice(Double.parseDouble(c.getPrice()));
			
			CartDAOImpl dao2 = new CartDAOImpl(DBConnect.getConn());
			boolean f = dao2.addCart(ca);
			
			HttpSession session = req.getSession();
			
			if(f) 
			{
				session.setAttribute("addCart", "Collectibles Added To Cart");
				resp.sendRedirect("all_new_collectibles.jsp");
			}else {
				session.setAttribute("failed", "Collectibles Not Added to Cart");
				resp.sendRedirect("all_new_collectibles.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	

}
