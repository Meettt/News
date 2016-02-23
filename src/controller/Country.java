package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ADO.CountryDAO;
import VO.CountryVO;

/**
 * Servlet implementation class searchCountry
 */
@WebServlet("/Country")
public class Country extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Country() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		CountryVO countryVO= new CountryVO();
		CountryDAO countryDAO = new CountryDAO();
		HttpSession session=request.getSession();
		String string = request.getParameter("string");
		
		//retrieve country from database to dropdown menu  
		if(string.equals("add")){
			List ls = countryDAO.search(countryVO);
			session.setAttribute("countryls",ls);
			response.sendRedirect("Admin/addCountry.jsp");
		}
		//retrieve data for tables
		if(string.equals("search")){
			List ls = countryDAO.search(countryVO);

			session.setAttribute("countryls",ls);
			//retrive data for reporter page in registration
			if(request.getParameter("reporter")!= null){
				response.sendRedirect("Admin/reporterRegistration.jsp");
			}
			else{
			response.sendRedirect("Admin/searchCountry.jsp");}
		}
		if(string.equals("edit")){
			int countryId = Integer.parseInt(request.getParameter("countryId"));
			countryVO.setCountryId(countryId);
			List ls=countryDAO.edit(countryVO);
			session.setAttribute("countryls",ls);
			response.sendRedirect("Admin/editCountry.jsp");
		}
		if(string.equals("delete")){
			int countryId = Integer.parseInt(request.getParameter("countryId"));
			countryVO.setCountryId(countryId);
			countryDAO.delete(countryVO);
			response.sendRedirect("Country?string=search");

		}
		if (string.equals("update")) {
			int countryId = Integer.parseInt(request.getParameter("countryId"));
			String countryName = request.getParameter("countryName");
			String countryDes = request.getParameter("countryDes");
			countryVO.setCountryId(countryId);
			countryVO.setCountryDes(countryDes);
			countryVO.setCountryName(countryName);
			countryDAO.update(countryVO);
			response.sendRedirect("Country?string=search");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//insert data in database
		
		String countryName= request.getParameter("countryName");
		String countryDes= request.getParameter("countryDes");
		CountryVO countryVO= new CountryVO();
		countryVO.setCountryName(countryName);
		countryVO.setCountryDes(countryDes);
		CountryDAO  countryDAO= new CountryDAO();
		countryDAO.insert(countryVO);
		response.sendRedirect("Admin/addCountry.jsp");
	}

}
