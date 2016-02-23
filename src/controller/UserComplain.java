package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ADO.UserComplainDAO;
import VO.ReporterRegistrationVO;
import VO.UserComplainVO;
import VO.UserVO;

/**
 * Servlet implementation class UserComplain
 */
@WebServlet("/UserComplain")
public class UserComplain extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserComplain() {
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
		String string = request.getParameter("string");
		UserComplainVO userComplainVO = new UserComplainVO();
		UserComplainDAO userComplainDAO = new UserComplainDAO();
		HttpSession session = request.getSession();

		if (string.equals("search")) {
			List usercomplainls = userComplainDAO.searchForAdmin(userComplainVO);
			session.setAttribute("usercomplainls", usercomplainls);
			response.sendRedirect("Admin/adminUserComplain.jsp");

		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String string = request.getParameter("string");
		UserComplainVO userComplainVO = new UserComplainVO();
		UserComplainDAO userComplainDAO = new UserComplainDAO();
		
		
		if(string.equals("update")){
			int complainId = Integer.parseInt(request.getParameter("complainId"));
			userComplainVO.setComplainId(complainId);
			String complainResponse = request.getParameter("complainResponse");
			userComplainVO.setComplainResponse(complainResponse);
			userComplainDAO.update(userComplainVO);
			response.sendRedirect("UserComplain?string=search");
		}
		else{
		int userId = Integer.parseInt(request.getParameter("userId"));
		String complainName = request.getParameter("complainName");
		String complainDes = request.getParameter("complainDes");
		UserVO userVO = new UserVO();
		userVO.setUserId(userId);
		
		userComplainVO.setComplainName(complainName);
		userComplainVO.setComplainDes(complainDes);
		userComplainVO.setUserVO(userVO);
		userComplainDAO.insert(userComplainVO);
		response.sendRedirect("User/UserComplain.jsp");
		}
	}

}
