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
import ADO.LoginDAO;
import ADO.ReporterRegistrationDAO;
import ADO.UserDAO;
import VO.AdminVO;
import VO.LoginVO;
import VO.ReporterRegistrationVO;
import VO.UserVO;

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
		
		String email= request.getParameter("email");
		String pwd = request.getParameter("pwd");
		String type = request.getParameter("r");
		HttpSession session = request.getSession();
		LoginVO loginVO = new LoginVO();
		LoginDAO loginDAO = new LoginDAO();
		
		AdminVO adminVO = new AdminVO();
		adminVO.setAdminUserName(email);
		adminVO.setAdminPwd(pwd);
		AdminDAO adminDAO = new AdminDAO();
		List adminls = adminDAO.search(adminVO);
		if(adminls.size()>0){
			session.setAttribute("adminls", adminls);
			response.sendRedirect("Admin/index.jsp");
			}
			
		
		else if(type.equals("user")){
		UserVO userVO = new UserVO();
		UserDAO userDAO =new UserDAO();
		userVO.setEmail(email);
		userVO.setPwd(pwd);
		List userls=userDAO.search(userVO);
		session.setAttribute("userls", userls);
		loginVO.setEmailId(email);
		loginVO.setPwd(pwd);
		loginVO.setType(type);
		loginDAO.insert(loginVO);
		response.sendRedirect("User/userIndex.jsp");

		}
		else if(type.equals("reporter")){
			ReporterRegistrationVO reporterRegistrationVO = new ReporterRegistrationVO();
			ReporterRegistrationDAO reporterRegistrationDAO = new ReporterRegistrationDAO();
			reporterRegistrationVO.setEmail(email);
			reporterRegistrationVO.setPassword(pwd);
			List reporterls = reporterRegistrationDAO.search(reporterRegistrationVO);
			session.setAttribute("reporterls",reporterls);
			loginVO.setEmailId(email);
			loginVO.setPwd(pwd);
			loginVO.setType(type);
			loginDAO.insert(loginVO);
			
			response.sendRedirect("Admin/reporterIndex.jsp");

			}

		else {
			session.setAttribute("error", "error");
			response.sendRedirect("Admin/pages-signin.jsp");
			
		}
		
	}

}
