package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import ADO.AdminDAO;
import ADO.UserDAO;
import VO.AdminVO;
import VO.AreaVO;
import VO.CityVO;
import VO.CountryVO;
import VO.StateVO;
import VO.UserVO;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/SignUp")
@MultipartConfig
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
		String flag=request.getParameter("userType");
		System.out.print(flag);
		if(flag.equals("admin")){
			String adminName= request.getParameter("adminName");
			String adminUserName = request.getParameter("adminUserName");
			String adminEmail = request.getParameter("adminEmail");
			String adminPwd = request.getParameter("adminPwd");
			String adminConfirmPwd = request.getParameter("adminConfirmPwd");
			if(adminConfirmPwd.equals(adminPwd)){
				AdminVO adminVO = new AdminVO();
				adminVO.setAdminName(adminName);
				adminVO.setAdminUserName(adminUserName);
				adminVO.setAdminEmail(adminEmail);
				adminVO.setAdminPwd(adminPwd);
			AdminDAO adminDAO = new AdminDAO();
			adminDAO.insert(adminVO);
			response.sendRedirect("Admin/pages-signin.jsp?flag="+flag+"");
			}
			else {
				HttpSession session=request.getSession();
				session.setAttribute("error","Please check your Password");
				response.sendRedirect("Admin/pages-signup.jsp");
			}
		}
			
		
		
		
		else if(flag.equals("user")){
				String firstName = request.getParameter("firstName");
				String lastName = request.getParameter("lastName");
				String gender = request.getParameter("gender");
				String userName = request.getParameter("userName");
				String email = request.getParameter("email");
				String pwd = "abc";
				int countryId = Integer.parseInt(request.getParameter("countryId"));
				int stateId = Integer.parseInt(request.getParameter("stateId"));
				int cityId = Integer.parseInt(request.getParameter("cityId"));
				int areaId = Integer.parseInt(request.getParameter("areaId"));
				String date = request.getParameter("birthDate");
				DateFormat df = new SimpleDateFormat("MM/dd/yyyy"); 
				Date birthDate = null;
				try {
					birthDate = (Date) df.parse(date);
				} catch (ParseException e) {
					e.printStackTrace();
				}
				String phoneNum = request.getParameter("phoneNum");
				
				
				UserVO userVO = new UserVO();
				UserDAO userDAO = new UserDAO();
				userVO.setFirstName(firstName);
				userVO.setLastName(lastName);
				userVO.setGender(gender);
				userVO.setUserName(userName);
				userVO.setEmail(email);
				userVO.setPwd(pwd);
				userVO.setBirthDate(birthDate);
				userVO.setPhoneNum(phoneNum);
				
				CountryVO countryVO = new CountryVO();
				StateVO stateVO = new StateVO();
				CityVO cityVO = new CityVO();
				AreaVO areaVO = new AreaVO();
				countryVO.setCountryId(countryId);
				stateVO.setStateId(stateId);
				cityVO.setCityId(cityId);
				areaVO.setAreaId(areaId);
				userVO.setCountryVO(countryVO);
				userVO.setStateVO(stateVO);
				userVO.setCityVO(cityVO);
				userVO.setAreaVO(areaVO);
				userDAO.insert(userVO);
				
				List maxId =userDAO.maxId(userVO);
			    Part filePart = request.getPart("file"); // Retrieves <input type="file" name="file">
			    String fileName = filePart.getSubmittedFileName();
				System.out.println(" Myfile Name :: "+fileName);
				
			    InputStream fileContent = filePart.getInputStream();
			    // ... (do your job here)
			    fileName = "user"+maxId.get(0)+".jpg";
			    System.out.println("filePart :: "+filePart);
				System.out.println("file Name :: "+fileName);
			    
				System.out.println("File Content :: "+fileContent);
				
				byte[] buffer = new byte[fileContent.available()];
				fileContent.read(buffer);
			 
				String filePath = getServletContext().getRealPath(request.getServletPath());
				
				int path = filePath.lastIndexOf('\\');
				String path1= filePath.substring(0, path) +"\\doc\\";
				
			    File targetFile = new File(path1+fileName);
			    OutputStream outStream = new FileOutputStream(targetFile);
			    outStream.write(buffer);
			    
			    /*uncoment this if you want to encrypt name of file n coment above 3 line
			    File targetEncryptFile = new File(path1+encryptFileName(fileName));
			    OutputStream outStream = new FileOutputStream(targetEncryptFile);
			    outStream.write(buffer);*/
			    
			    System.out.println("File Output Path :: "+path1+fileName);
			    
			    outStream.close();

				
				}
			response.sendRedirect("Admin/pages-signin.jsp?flag='"+flag+"'");
		}
		
	}


