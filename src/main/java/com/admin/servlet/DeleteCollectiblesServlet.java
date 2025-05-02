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

@WebServlet("/delete")
public class DeleteCollectiblesServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			
			CollectiblesDAOImpl dao = new CollectiblesDAOImpl(DBConnect.getConn());
			boolean f = dao.deleteCollectibles(id);
			HttpSession session = req.getSession();
			if(f)
			{
				session.setAttribute("succMsg", "Product Deletion Successfully");
				resp.sendRedirect("admin/all_collections.jsp");
			}else {
				session.setAttribute("failedMsg", "Deletion Failed");
				resp.sendRedirect("admin/all_collections.jsp");	
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	

}
