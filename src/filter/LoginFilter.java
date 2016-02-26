package filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import ADO.LoginDAO;
import VO.LoginVO;

@WebFilter("/jkil")
public class LoginFilter implements Filter {
	public LoginFilter() {
	}

	public void destroy() {
	}
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpSession session =((HttpServletRequest) request).getSession();
		RequestDispatcher requestDispatcher;
		String flag = request.getParameter("flag");
		System.out.println("flag : "+flag);

		String uri = ((HttpServletRequest)request).getRequestURI();
		System.out.println("URI :: "+uri);
		
		if(uri.contains("SignUp") ||uri.contains("UserPageNews") ||uri.contains("HeaderController") || uri.contains("userIndex")||uri.contains("reporterRegistration")|| (uri.contains("pages-signup")||(uri.contains("/assets"))||uri.contains("/css")) || uri.contains("/js") && !uri.contains(".jsp") || uri.contains("/img")|| uri.contains("/fonts"))
		{
			System.err.println("URI :: "+uri);
			chain.doFilter(request,response);
		}
		else if (flag!= null && flag.equals("logout")) {
			System.out.println("Filter :: logOut");
			session.invalidate();
			requestDispatcher = request.getRequestDispatcher("/Admin/pages-signin.jsp");
			requestDispatcher.forward(request, response);

		}
		else if(flag != null && flag.equals("login") )
		{
			System.out.println("Filter :: login");
			String emailId = request.getParameter("emailId");
			String pwd = request.getParameter("pwd");
			System.out.println("email and password : "+emailId+""+pwd);

			LoginVO loginVO = new LoginVO();
			loginVO.setEmailId(emailId);
			loginVO.setPwd(pwd);
			//System.out.println("loginvo : "+LoginVO.getEmailId()+LoginVO.getPassword());
			
			LoginDAO loginDAO = new LoginDAO();
			List list = new ArrayList();
			list = loginDAO.authentication(loginVO);

			System.out.println("list size : "+list.size());
			
			if(list != null && list.size()>=1){

				//Iterator itr = list.iterator();

				//while(itr.hasNext()){
				LoginVO str1=(LoginVO) list.get(0);

				long y = str1.getLoginId();
				session.setAttribute("userID",y);

				System.out.println(str1.getType());
				//	System.out.println(session.getAttribute("userId"));
				String type = str1.getType();
				session.setAttribute("usertype",type);
				System.out.println(y);
				if(type.equalsIgnoreCase("admin"))
				{
					requestDispatcher = request.getRequestDispatcher("/Admin/adminIndex.jsp");  
					requestDispatcher.forward(request,response);
				}
				else if(type.equalsIgnoreCase("reporter"))
				{
					requestDispatcher = request.getRequestDispatcher("/User/userIndex.jsp");  
					requestDispatcher.forward(request,response);
				}
				else if(type.equalsIgnoreCase("user"))
				{
					requestDispatcher = request.getRequestDispatcher("/User/userIndex.jsp");  
					requestDispatcher.forward(request,response);
				}
				else
				{
					requestDispatcher = request.getRequestDispatcher("/Admin/pages-signin.jsp");  
					requestDispatcher.forward(request,response);  
				}
			}
			else
			{
				requestDispatcher = request.getRequestDispatcher("/Admin/pages-signin.jsp");
				requestDispatcher.forward(request,response);  		
			}	
		}
		else if(session.getAttribute("userID") != null)
		{
			System.out.println("Filter :: afterLogin");
			String h = (String)session.getAttribute("usertype");
			Long userID = (Long)session.getAttribute("userID");
			
			//System.out.println("type = = = " + h);

			if(h!=null && h.equals("admin")){
				//System.out.println("chain");
				chain.doFilter(request,response);
			}
			
			else if(h!=null && h.equals("reporter"))
			{
				//System.out.println("chain");
				chain.doFilter(request, response);
			}
			else if(h!=null && h.equals("user"))
			{
				//System.out.println("chain");
				chain.doFilter(request, response);
			}
			else
			{
				RequestDispatcher rd = request.getRequestDispatcher("/Admin/error.jsp");  
				rd.forward(request,response);
			}
		}
		else
		{
			System.out.println("Filter :: lastElse");
			RequestDispatcher rd = request.getRequestDispatcher("/Admin/pages-signin.jsp");  
			rd.forward(request,response);  

		}
	}
	public void init(FilterConfig fConfig) throws ServletException {
	}
}
