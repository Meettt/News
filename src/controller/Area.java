package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ADO.AreaDAO;
import ADO.CityDAO;
import ADO.CountryDAO;
import ADO.StateDAO;
import VO.AreaVO;
import VO.CityVO;
import VO.CountryVO;
import VO.StateVO;

/**
 * Servlet implementation class Area
 */
@WebServlet("/Area")
public class Area extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Area() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		AreaVO areaVO=new AreaVO();
		AreaDAO areaDAO=new AreaDAO();
		HttpSession session=request.getSession();
		String string = request.getParameter("string");
		
		if(string.equals("add")){
			CityVO cityVO=new CityVO();
			CityDAO cityDAO=new CityDAO();
			List cityls=cityDAO.search(cityVO);
			StateVO stateVO=new StateVO();
			StateDAO stateDAO=new StateDAO();
			List statels=stateDAO.search(stateVO);
			CountryVO countryVO=new CountryVO();
			CountryDAO countryDAO=new CountryDAO();
			List countryls=countryDAO.search(countryVO);
			session.setAttribute("cityls",cityls);
			session.setAttribute("statels", statels);
			session.setAttribute("countryls",countryls);
			response.sendRedirect("Admin/addArea.jsp");
		}
		if(string.equals("search")){
			List ls=areaDAO.search(areaVO);
			System.out.println(ls.size());
			session.setAttribute("areals", ls);
			response.sendRedirect("Admin/searchArea.jsp");
		}
		if(string.equals("delete")){
			int areaId = Integer.parseInt(request.getParameter("areaId"));
			areaVO.setAreaId(areaId);
			areaDAO.delete(areaVO);
			response.sendRedirect("Area?string=search");
		}
		if(string.equals("edit")){
			int areaId = Integer.parseInt(request.getParameter("areaId"));
			areaVO.setAreaId(areaId);
			List areals=areaDAO.edit(areaVO);
			session.setAttribute("areals", areals);
			response.sendRedirect("Admin/editArea.jsp");
		}
		if(string.equals("update")){
			int countryId = Integer.parseInt(request.getParameter("countryId"));
			int stateId = Integer.parseInt(request.getParameter("stateId"));
			int cityId = Integer.parseInt(request.getParameter("cityId"));
			int areaId=Integer.parseInt(request.getParameter("areaId"));
			String areaName=request.getParameter("areaName");
			String areaDes=request.getParameter("areaDes");
			CountryVO countryVO=new CountryVO();
			StateVO stateVO=new StateVO();
			CityVO cityVO=new CityVO();
			countryVO.setCountryId(countryId);
			stateVO.setStateId(stateId);
			cityVO.setCityId(cityId);
			areaVO.setAreaId(areaId);
			areaVO.setAreaName(areaName);
			areaVO.setAreaDes(areaDes);
			areaVO.setCountryVO(countryVO);
			areaVO.setStateVO(stateVO);
			areaVO.setCityVO(cityVO);
			areaDAO.update(areaVO);
			response.sendRedirect("Area?string=search");
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int countryId=Integer.parseInt(request.getParameter("countryId"));
		int stateId=Integer.parseInt(request.getParameter("stateId"));
		int cityId=Integer.parseInt(request.getParameter("cityId"));
		String areaName=request.getParameter("areaName");
		String areaDes=request.getParameter("areaDes");
		System.out.println(areaDes+areaName);
		CountryVO countryVO=new CountryVO();
		StateVO stateVO=new StateVO();
		CityVO cityVO=new CityVO();
		AreaVO areaVO=new AreaVO();
		countryVO.setCountryId(countryId);
		stateVO.setStateId(stateId);
		cityVO.setCityId(cityId);
		areaVO.setAreaName(areaName);
		areaVO.setAreaDes(areaDes);
		areaVO.setCountryVO(countryVO);
		areaVO.setStateVO(stateVO);
		areaVO.setCityVO(cityVO);
		AreaDAO areaDao=new AreaDAO();
		areaDao.insert(areaVO);
		response.sendRedirect("Admin/addArea.jsp");
		
		
	
	}

}
