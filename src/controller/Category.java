package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ADO.CategoryDAO;
import VO.CategoryVO;


/**
 * Servlet implementation class Category
 */
@WebServlet("/Category")
public class Category extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Category() {
        super();
        // TODO Auto-generated constructor stub
           }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 CategoryVO categoryVO= new CategoryVO();
	        CategoryDAO categoryDAO = new CategoryDAO();
			HttpSession session=request.getSession();
			String string = request.getParameter("string");
			
			//retrieve country from database to dropdown menu  
			if(string.equals("add")){
				List ls = categoryDAO.search(categoryVO);
				session.setAttribute("categoryls",ls);
				response.sendRedirect("Admin/addCategory.jsp");
			}
			//retrieve data for tabels
			if(string.equals("search")){
				List ls = categoryDAO.search(categoryVO);
				session.setAttribute("categoryls",ls);
				response.sendRedirect("Admin/searchCategory.jsp");
			}
			if(string.equals("edit")){
				int categoryId = Integer.parseInt(request.getParameter("categoryId"));
				categoryVO.setCategoryId(categoryId);
				List ls=categoryDAO.edit(categoryVO);
				session.setAttribute("categoryls",ls);
				response.sendRedirect("Admin/editCategory.jsp");
			}
			if(string.equals("delete")){
				int categoryId = Integer.parseInt(request.getParameter("categoryId"));
				categoryVO.setCategoryId(categoryId);
				categoryDAO.delete(categoryVO);
				response.sendRedirect("Category?string=search");

			}
			if (string.equals("update")) {
				int countryId = Integer.parseInt(request.getParameter("categoryId"));
				String countryName = request.getParameter("categoryName");
				String countryDes = request.getParameter("categoryDes");
				categoryVO.setCategoryId(countryId);
				categoryVO.setCategoryDes(countryDes);
				categoryVO.setCategoryName(countryName);
				categoryDAO.update(categoryVO);
				response.sendRedirect("Category?string=search");
			}


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String categoryName= request.getParameter("categoryName");
		String categoryDes= request.getParameter("categoryDes");
		CategoryVO categoryVO= new CategoryVO();
		categoryVO.setCategoryName(categoryName);
		categoryVO.setCategoryDes(categoryDes);
		CategoryDAO  categoryDAO= new CategoryDAO();
		categoryDAO.insert(categoryVO);
		response.sendRedirect("Admin/addCategory.jsp");
		
	}

}
