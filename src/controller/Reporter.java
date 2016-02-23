package controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javafx.geometry.VPos;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ADO.CountryDAO;
import ADO.ReporterRegistrationDAO;
import VO.CountryVO;
import VO.ReporterRegistrationVO;

/**
 * Servlet implementation class Reporter
 */
@WebServlet("/Reporter")
public class Reporter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Reporter() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		ReporterRegistrationVO reporterRegistrationVO = new ReporterRegistrationVO();
		ReporterRegistrationDAO reporterRegistrationDAO = new ReporterRegistrationDAO();
		String string = request.getParameter("string");
		
		if(string.equals("edit")){
		int reporterId= Integer.parseInt(request.getParameter("reporterId"));
		CountryVO countryVO = new CountryVO();
		CountryDAO countryDAO = new CountryDAO();
		List countryls = countryDAO.search(countryVO);
		session.setAttribute("countryls", countryls);
		reporterRegistrationVO.setReporterId(reporterId);
		List reporterls =reporterRegistrationDAO.edit(reporterRegistrationVO);
		session.setAttribute("reporterls", reporterls);
		response.sendRedirect("Admin/reporterProfile.jsp");
		}
		if(string.equals("search")){
		List reporterls=	reporterRegistrationDAO.search(reporterRegistrationVO);
		session.setAttribute("reporterls", reporterls);
		response.sendRedirect("Admin/searchReporter.jsp");
		}
		if(string.equals("delete"))
		{
			int reporterId=Integer.parseInt(request.getParameter("reporterId"));
			reporterRegistrationVO.setReporterId(reporterId);
			reporterRegistrationDAO.delete(reporterRegistrationVO);
			response.sendRedirect("Reporter?string=search");
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String string = request.getParameter("string");
		
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		int countryId = Integer.parseInt(request.getParameter("countryId"));
		CountryVO countryVO = new CountryVO();
		countryVO.setCountryId(countryId);
		String date = request.getParameter("birthDate");
		DateFormat df = new SimpleDateFormat("MM/dd/yyyy"); 
		Date birthDate = null;
		try {
			birthDate = (Date) df.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		String phoneNum = request.getParameter("phoneNum");
		String experiance = request.getParameter("experiance");
		ReporterRegistrationVO reporterRegistrationVO = new ReporterRegistrationVO();
		reporterRegistrationVO.setBirthDate(birthDate);
		reporterRegistrationVO.setCountryVO(countryVO);
		reporterRegistrationVO.setEmail(email);
		reporterRegistrationVO.setPassword(password);
		reporterRegistrationVO.setFirstName(firstName);
		reporterRegistrationVO.setLastName(lastName);
		reporterRegistrationVO.setUserName(userName);
		reporterRegistrationVO.setPhoneNum(phoneNum);
		reporterRegistrationVO.setExperiance(experiance);
		ReporterRegistrationDAO reporterRegistrationDAO = new ReporterRegistrationDAO();
		if (string.equals("update")) {
			int reporterId= Integer.parseInt(request.getParameter("reporterId"));
			reporterRegistrationVO.setReporterId(reporterId);
			reporterRegistrationDAO.update(reporterRegistrationVO);
			response.sendRedirect("Reporter?string=edit&reporterId=1");
			}
		else{
		reporterRegistrationDAO.insert(reporterRegistrationVO);
		response.sendRedirect("Admin/reporterRegistration.jsp");
		}}

}
