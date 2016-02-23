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
import ADO.StateDAO;
import VO.CountryVO;
import VO.StateVO;

/**
 * Servlet implementation class searchState
 */
@WebServlet("/State")
public class State extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public State() {
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
		StateVO stateVO = new StateVO();
		StateDAO stateDAO = new StateDAO();
		HttpSession session = request.getSession();
		String string = request.getParameter("string");

		if (string.equals("add")) {
			CountryVO countryVO = new CountryVO();
			CountryDAO countryDAO = new CountryDAO();
			List countryls = countryDAO.search(countryVO);
			session.setAttribute("countryls", countryls);
			response.sendRedirect("Admin/addState.jsp");
		}
		if (string.equals("search")) {
			List statels = stateDAO.search(stateVO);
			session.setAttribute("statels", statels);
			response.sendRedirect("Admin/searchState.jsp");
		}
		if (string.equals("delete")) {
			int stateId = Integer.parseInt(request.getParameter("stateId"));
			stateVO.setStateId(stateId);
			stateDAO.delete(stateVO);
			response.sendRedirect("State?string=search");
		}
		if (string.equals("edit")) {
			int stateId = Integer.parseInt(request.getParameter("stateId"));
			stateVO.setStateId(stateId);
			CountryVO countryVO = new CountryVO();
			CountryDAO countryDAO = new CountryDAO();
			List countryls = countryDAO.search(countryVO);
			session.setAttribute("countryls", countryls);
			List statels = stateDAO.edit(stateVO);
			session.setAttribute("statels", statels);
			response.sendRedirect("Admin/editState.jsp");
		}
		if (string.equals("update")) {
			int countryId = Integer.parseInt(request.getParameter("countryId"));
			int stateId = Integer.parseInt(request.getParameter("stateId"));
			String stateName = request.getParameter("stateName");
			String stateDes = request.getParameter("stateDes");
			CountryVO countryVO = new CountryVO();
			countryVO.setCountryId(countryId);
			stateVO.setStateId(stateId);
			stateVO.setStateName(stateName);
			stateVO.setStateDes(stateDes);
			stateVO.setCountryVO(countryVO);
			StateDAO stateADO = new StateDAO();
			stateADO.update(stateVO);
			response.sendRedirect("State?string=search");
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
		String stateName = request.getParameter("stateName");
		String stateDes = request.getParameter("stateDes");
		CountryVO countryVO = new CountryVO();
		StateVO stateVO = new StateVO();
		countryVO.setCountryId(countryId);
		stateVO.setStateName(stateName);
		stateVO.setStateDes(stateDes);
		stateVO.setCountryVO(countryVO);
		StateDAO stateADO = new StateDAO();
		stateADO.insert(stateVO);
		response.sendRedirect("Admin/addState.jsp");
	}

}
