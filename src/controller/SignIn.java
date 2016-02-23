package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ADO.AdminDAO;
import VO.AdminVO;

/**
 * Servlet implementation class Signin
 */
@WebServlet("/SignIn")
public class SignIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignIn() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String adminUserName= request.getParameter("adminUserName");
		String adminPwd = request.getParameter("adminPwd");
		AdminVO adminVO = new AdminVO();
		adminVO.setAdminUserName(adminUserName);
		adminVO.setAdminPwd(adminPwd);
		AdminDAO adminDAO = new AdminDAO();
		List adminls = adminDAO.search(adminVO);
		HttpSession session = request.getSession();
		if(adminls.size()>0){
		session.setAttribute("adminls", adminls);
		response.sendRedirect("Admin/index.jsp");
		}
		else {
			session.setAttribute("error", "error");
			response.sendRedirect("Admin/pages-signin.jsp");
			
		}
		
	}

}
