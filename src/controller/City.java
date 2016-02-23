package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ADO.CityDAO;
import ADO.CountryDAO;
import ADO.StateDAO;
import VO.CityVO;
import VO.CountryVO;
import VO.StateVO;

/**
 * Servlet implementation class searchCity
 */
@WebServlet("/City")
public class City extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public City() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		CityVO cityVO = new CityVO();
		CityDAO cityDAO = new CityDAO();
		CountryVO countryVO = new CountryVO();
		CountryDAO countryDAO = new CountryDAO();
		StateVO stateVO = new StateVO();
		StateDAO stateDAO = new StateDAO();
		HttpSession session = request.getSession();
		String string = request.getParameter("string");

		if (string.equals("add")) {
			List statels = stateDAO.search(stateVO);
			List countryls = countryDAO.search(countryVO);
			session.setAttribute("countryls", countryls);
			session.setAttribute("statels", statels);
			response.sendRedirect("Admin/addCity.jsp");
		}
		if (string.equals("search")) {
			List ls = cityDAO.search(cityVO);
			session.setAttribute("cityls", ls);
			response.sendRedirect("Admin/searchCity.jsp");
		}
		if (string.equals("delete")) {
			int cityId = Integer.parseInt(request.getParameter("cityId"));
			cityVO.setCityId(cityId);
			cityDAO.delete(cityVO);
			response.sendRedirect("City?string=search");
		}
		if (string.equals("edit")) {
			int cityId = Integer.parseInt(request.getParameter("cityId"));
			List countryls = countryDAO.search(countryVO);
			session.setAttribute("countryls", countryls);
			cityVO.setCityId(cityId);
			List statels = stateDAO.search(stateVO);
			session.setAttribute("statels", statels);
			List cityls = cityDAO.edit(cityVO);
			session.setAttribute("cityls", cityls);
			response.sendRedirect("Admin/editCity.jsp");
		}
		if (string.equals("update")) {
			int countryId = Integer.parseInt(request.getParameter("countryId"));
			int stateId = Integer.parseInt(request.getParameter("stateId"));
			int cityId = Integer.parseInt(request.getParameter("cityId"));
			String cityName = request.getParameter("cityName");
			String cityDes = request.getParameter("cityDes");
			
			countryVO.setCountryId(countryId);
			stateVO.setStateId(stateId);
			cityVO.setCityId(cityId);
			cityVO.setCityName(cityName);
			cityVO.setCityDes(cityDes);
			cityVO.setCountryVO(countryVO);
			cityVO.setStateVO(stateVO);
			cityDAO.update(cityVO);
			response.sendRedirect("City?string=search");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int countryId = Integer.parseInt(request.getParameter("countryId"));
		int stateId = Integer.parseInt(request.getParameter("stateId"));
		String cityName = request.getParameter("cityName");
		String cityDes = request.getParameter("cityDes");
		CountryVO countryVO = new CountryVO();
		StateVO stateVO = new StateVO();
		CityVO cityVO = new CityVO();
		countryVO.setCountryId(countryId);
		stateVO.setStateId(stateId);
		cityVO.setCityName(cityName);
		cityVO.setCityDes(cityDes);
		cityVO.setCountryVO(countryVO);
		cityVO.setStateVO(stateVO);
		CityDAO cityDAO = new CityDAO();
		cityDAO.insert(cityVO);
		response.sendRedirect("Admin/addCity.jsp");
	}

}
