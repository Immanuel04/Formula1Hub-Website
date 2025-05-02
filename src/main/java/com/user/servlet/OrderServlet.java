package com.user.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CartDAOImpl;
import com.DAO.CollectiblesOrderDAOImpl;
import com.DB.DBConnect;
import com.entity.Cart;
import com.entity.Collectible_Order;

@WebServlet("/order")
public class OrderServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			HttpSession session = req.getSession();
			
			int id = Integer.parseInt(req.getParameter("id"));
			String name = req.getParameter("username");
			String email = req.getParameter("email");
			String phno = req.getParameter("phno");
			String address = req.getParameter("address");
			String landmark = req.getParameter("landmark");
			String city = req.getParameter("city");
			String state = req.getParameter("state");
			String pincode = req.getParameter("pincode");
			String paymentType = req.getParameter("payment");
			
			String fullAdd = address+", "+landmark+", "+city+", "+state+", "+pincode;
			
			/*System.out.println(name+" "+email+" "+phno+" "+fullAdd+" "+paymentType); */
			
			
			
			CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
			
			List<Cart> clist = dao.getCollectiblesByUser(id);
			
			if(clist.isEmpty())
			{
				session.setAttribute("failedMsg", "Add Collectibles to proceed");
				resp.sendRedirect("cart.jsp");
			}else {
				CollectiblesOrderDAOImpl dao2 = new CollectiblesOrderDAOImpl(DBConnect.getConn());
				
				Collectible_Order o = null;
				
				ArrayList<Collectible_Order> orderList = new ArrayList<Collectible_Order>();
				Random r = new Random(); 
				for(Cart c:clist)
				{
					o = new Collectible_Order();
					o.setOrderId("COLL-ORD-00"+ r.nextInt(1000));
					o.setUserName(name);
					o.setEmail(email);
					o.setPhno(phno);
					o.setFulladd(fullAdd);
					o.setHeading(c.getHeading());
					o.setDescription(c.getDescription());
					o.setPrice(c.getPrice()+"");
					o.setPaymentType(paymentType);
					orderList.add(o);
				}
				
				if("noselect".equals(paymentType))
				{
					session.setAttribute("failedMsg", "Please Choose your payment method");
					resp.sendRedirect("cart.jsp");
				}else {
					boolean f = dao2.saveOrder(orderList);
					if(f)
					{
						resp.sendRedirect("order_success.jsp");
					}else{
						session.setAttribute("failedMsg", "Order Failed due to server issue");
						resp.sendRedirect("cart.jsp");
					}
					
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	

}
