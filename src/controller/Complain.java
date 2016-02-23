package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ADO.ComplainDAO;
import VO.ComplainVO;
import VO.ReporterRegistrationVO;

/**
 * Servlet implementation class Complain
 */
@WebServlet("/Complain")
public class Complain extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Complain() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String string = request.getParameter("string");
		ComplainVO complainVO = new ComplainVO();
		ComplainDAO complainDAO = new ComplainDAO();
		HttpSession session = request.getSession();
		if(string.equals("search")){
			int reporterId= Integer.parseInt(request.getParameter("reporterId"));
			ReporterRegistrationVO reporterRegistrationVO = new ReporterRegistrationVO();
			reporterRegistrationVO.setReporterId(reporterId);
			
			complainVO.setReporterRegistrationVO(reporterRegistrationVO);
			String flag = request.getParameter("flag");
			if(flag.equals("admin")){
				List complainls =complainDAO.searchForAdmin(complainVO);
				session.setAttribute("complainls", complainls);
				response.sendRedirect("Admin/adminComplain.jsp");
			}
			else{
				List complainls =complainDAO.search(complainVO);
				session.setAttribute("complainls", complainls);
			response.sendRedirect("Admin/reporterComplain.jsp");
			}
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String string = request.getParameter("string");
		ComplainVO complainVO = new ComplainVO();
		ComplainDAO complainDAO = new ComplainDAO();
		
		//for the admin response it update Only Response the value 
		if(string.equals("update")){
			int complainId = Integer.parseInt(request.getParameter("complainId"));
			complainVO.setComplainId(complainId);
			String complainResponse = request.getParameter("complainResponse");
			complainVO.setComplainResponse(complainResponse);
			complainDAO.update(complainVO);
			response.sendRedirect("Complain?string=search&reporterId=1&flag=admin");
		}
		else{
		
		
		String complainName = request.getParameter("complainName");
		String complainDes = request.getParameter("complainDes");
		int reporterId= Integer.parseInt(request.getParameter("reporterId"));
		ReporterRegistrationVO reporterRegistrationVO = new ReporterRegistrationVO();
		reporterRegistrationVO.setReporterId(reporterId);
		complainVO.setComplainName(complainName);
		complainVO.setComplainDes(complainDes);
		complainVO.setReporterRegistrationVO(reporterRegistrationVO);
		
		
		
		//for reporter to send complain to admin ,it add details except the response 
		
		
		
		
		
		complainDAO.insert(complainVO);
		response.sendRedirect("Complain?string=search&reporterId=1&flag=reporter");
		}
	}
}
