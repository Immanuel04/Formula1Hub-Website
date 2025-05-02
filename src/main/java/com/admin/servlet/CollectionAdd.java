package com.admin.servlet;

import java.io.File;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.CollectiblesDAOImpl;
import com.DB.DBConnect;
import com.entity.CollectionDetails;

@WebServlet("/add_items")
@MultipartConfig
public class CollectionAdd extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String heading = req.getParameter("hname");
			String description = req.getParameter("descr");
			String price = req.getParameter("price");
			String category = req.getParameter("itype");
			String status = req.getParameter("istatus");
			Part part = req.getPart("bing");
			String fileName = part.getSubmittedFileName();

			CollectionDetails c = new CollectionDetails(heading, description, price, category, status, fileName, "admin");
			CollectiblesDAOImpl dao = new CollectiblesDAOImpl(DBConnect.getConn());
			
			boolean f = dao.addCollectibles(c);

			HttpSession session = req.getSession();
			if (f) 
			{
				String path = getServletContext().getRealPath("")+"collection";
				
				File file = new File(path);
				part.write(path + File.separator + fileName);
				
				session.setAttribute("succMsg", "Collectible Add Successfully");
				resp.sendRedirect("admin/add_items.jsp");
				
			}else {
				session.setAttribute("failedMsg", "Something went Wrong on Server");
				resp.sendRedirect("admin/add_items.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
