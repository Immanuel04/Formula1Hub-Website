package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CartDAOImpl;
import com.DB.DBConnect;

@WebServlet("/remove_collectible")
public class RemoveCollectibleCart extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int itemid = Integer.parseInt(req.getParameter("itemid"));
		int uid = Integer.parseInt(req.getParameter("uid"));
		int cid = Integer.parseInt(req.getParameter("cid"));
		CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
		boolean f = dao.deleteCollectible(itemid, uid, cid);
		
		HttpSession session = req.getSession();
		if(f)
		{
			session.setAttribute("succMsg", "Collectible removed from cart");
			resp.sendRedirect("cart.jsp");
		}else {
			session.setAttribute("failedMsg", "Something went wrong on Server");
			resp.sendRedirect("cart.jsp");
		}
			
	}
	


}
