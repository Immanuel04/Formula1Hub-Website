package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CollectiblesDAOImpl;
import com.DB.DBConnect;
import com.entity.CollectionDetails;

@WebServlet("/editcollectibles")
public class EditCollectiblesServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id")); 
			String heading = req.getParameter("hname");
			String description = req.getParameter("descr");
			String price = req.getParameter("price");
			String status = req.getParameter("istatus");
			
			CollectionDetails c = new CollectionDetails();
			c.setItemid(id);
			c.setHeading(heading);
			c.setDescription(description);
			c.setPrice(price);
			c.setStatus(status);
			
			CollectiblesDAOImpl dao = new CollectiblesDAOImpl(DBConnect.getConn());
			boolean f = dao.updateEditCollectibles(c);
			HttpSession session = req.getSession();
			if(f)
			{
				session.setAttribute("succMsg", "Product Updated Successfully");
				resp.sendRedirect("admin/all_collections.jsp");
			}else {
				session.setAttribute("failedMsg", "Updation Failed");
				resp.sendRedirect("admin/all_collections.jsp");	
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	

}
