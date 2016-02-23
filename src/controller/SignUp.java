package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ADO.AdminDAO;
import VO.AdminVO;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SignUp() {
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
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String adminUserName = request.getParameter("adminUserName");
		String adminEmail = request.getParameter("adminEmail");
		String adminName = request.getParameter("adminName");
		String adminPwd = request.getParameter("adminPwd");
		String adminPwdConfirm = request.getParameter("adminPwdConfirm");
		if (adminPwd.equals(adminPwdConfirm)) {
			AdminVO adminVO = new AdminVO();
			adminVO.setAdminEmail(adminEmail);
			adminVO.setAdminName(adminName);
			adminVO.setAdminPwd(adminPwd);
			adminVO.setAdminUserName(adminUserName);
			AdminDAO adminDAO = new AdminDAO();
			adminDAO.insert(adminVO);
			response.sendRedirect("Admin/index.jsp");
		}
		else {
			HttpSession session=request.getSession();
			session.setAttribute("error","Please check your Password");
			response.sendRedirect("Admin/pages-signup.jsp");
		}
	}

}
