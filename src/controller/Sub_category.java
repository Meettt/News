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


import ADO.CountryDAO;
import ADO.StateDAO;
import ADO.Sub_categoryDAO;
import VO.CategoryVO;


import VO.CountryVO;
import VO.Sub_categoryVO;

/**
 * Servlet implementation class Sub_category
 */
@WebServlet("/Sub_category")
public class Sub_category extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sub_category() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Sub_categoryVO sub_categoryVO = new Sub_categoryVO();
		Sub_categoryDAO sub_categoryDAO = new Sub_categoryDAO();
		HttpSession session = request.getSession();
		String string = request.getParameter("string");

		if (string.equals("add")) {
			CategoryVO categoryVO = new CategoryVO();
			CategoryDAO categoryDAO = new CategoryDAO();
			List categoryls = categoryDAO.search(categoryVO);
			session.setAttribute("categoryls", categoryls);
			response.sendRedirect("Admin/addSub_category.jsp");
		}
		if (string.equals("search")) {
			List sub_categoryls = sub_categoryDAO.search(sub_categoryVO);
			session.setAttribute("sub_categoryls", sub_categoryls);
			response.sendRedirect("Admin/searchSub_category.jsp");
		}
		if (string.equals("delete")) {
			int sub_categoryId = Integer.parseInt(request.getParameter("sub_categoryId"));
			sub_categoryVO.setSub_categoryId(sub_categoryId);
			sub_categoryDAO.delete(sub_categoryVO);
			response.sendRedirect("Sub_category?string=search");
		}
		if (string.equals("edit")) {
			CategoryVO categoryVO = new CategoryVO();
			CategoryDAO categoryDAO = new CategoryDAO();
			List categoryls = categoryDAO.search(categoryVO);
			session.setAttribute("categoryls", categoryls);
			
			int sub_categoryId = Integer.parseInt(request.getParameter("sub_categoryId"));
			sub_categoryVO.setSub_categoryId(sub_categoryId);
			List sub_categoryls = sub_categoryDAO.edit(sub_categoryVO);
			session.setAttribute("sub_categoryls", sub_categoryls);
			response.sendRedirect("Admin/editSub_category.jsp");
		}
		if (string.equals("update")) {
			int categoryId = Integer.parseInt(request.getParameter("categoryId"));
			int sub_categoryId = Integer.parseInt(request.getParameter("sub_categoryId"));
			String sub_categoryName = request.getParameter("sub_categoryName");
			String sub_categoryDes = request.getParameter("sub_categoryDes");
			
			CategoryVO categoryVO = new CategoryVO();
			categoryVO.setCategoryId(categoryId);
			sub_categoryVO.setSub_categoryId(sub_categoryId);
			sub_categoryVO.setSub_categoryName(sub_categoryName);
			sub_categoryVO.setSub_categoryDes(sub_categoryDes);
			sub_categoryVO.setCategoryVO(categoryVO);
			Sub_categoryDAO sub_categoryADO = new Sub_categoryDAO();
			sub_categoryADO.update(sub_categoryVO);
			response.sendRedirect("Sub_category?string=search");
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int categoryId = Integer.parseInt(request.getParameter("categoryId"));
		String sub_categoryName = request.getParameter("sub_categoryName");
		String sub_categoryDes = request.getParameter("sub_categoryDes");
		
		CategoryVO categoryVO = new CategoryVO();
		Sub_categoryVO sub_categoryVO = new Sub_categoryVO();
		
		categoryVO.setCategoryId(categoryId);
		sub_categoryVO.setSub_categoryName(sub_categoryName);
		sub_categoryVO.setSub_categoryDes(sub_categoryDes);
		sub_categoryVO.setCategoryVO(categoryVO);
		
		Sub_categoryDAO sub_categoryADO = new Sub_categoryDAO();
		sub_categoryADO.insert(sub_categoryVO);
		response.sendRedirect("Admin/addSub_category.jsp");
	
	}

}
