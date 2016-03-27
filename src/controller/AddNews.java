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

import ADO.AddNewsDAO;
import ADO.AreaDAO;
import ADO.CategoryDAO;
import ADO.CityDAO;
import ADO.CountryDAO;
import ADO.StateDAO;
import ADO.Sub_categoryDAO;
import VO.AddNewsDescriptionVO;
import VO.AddNewsVO;
import VO.AreaVO;
import VO.CategoryVO;
import VO.CityVO;
import VO.CountryVO;
import VO.ReporterRegistrationVO;
import VO.StateVO;
import VO.Sub_categoryVO;

/**
 * Servlet implementation class AddNews
 */
@WebServlet("/AddNews")
@MultipartConfig
public class AddNews extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddNews() {
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
		HttpSession session = request.getSession();
		if (string.equals("add")) {
			CityVO cityVO = new CityVO();
			CityDAO cityDAO = new CityDAO();
			List cityls = cityDAO.search(cityVO);
			StateVO stateVO = new StateVO();
			StateDAO stateDAO = new StateDAO();
			List statels = stateDAO.search(stateVO);
			CountryVO countryVO = new CountryVO();
			CountryDAO countryDAO = new CountryDAO();
			AreaVO areaVO = new AreaVO();
			AreaDAO areaDAO = new AreaDAO();
			List countryls = countryDAO.search(countryVO);
			List areals = areaDAO.search(areaVO);
			Sub_categoryVO sub_categoryVO = new Sub_categoryVO();
			Sub_categoryDAO sub_categoryDAO = new Sub_categoryDAO();
			CategoryVO categoryVO = new CategoryVO();
			CategoryDAO categoryDAO = new CategoryDAO();
			List categoryls = categoryDAO.search(categoryVO);
			List sub_categoryls = sub_categoryDAO.search(sub_categoryVO);
			session.setAttribute("sub_categoryls", sub_categoryls);
			session.setAttribute("categoryls", categoryls);
			session.setAttribute("cityls", cityls);
			session.setAttribute("statels", statels);
			session.setAttribute("countryls", countryls);
			session.setAttribute("areals", areals);

			response.sendRedirect("Admin/addNews.jsp");
		}
		if (string.equals("search")) {
			AddNewsDAO addNewsDAO = new AddNewsDAO();
			AddNewsVO addNewsVO = new AddNewsVO();
			int reporterId = Integer.parseInt(request
					.getParameter("reporterId"));
			ReporterRegistrationVO reporterRegistrationVO = new ReporterRegistrationVO();
			reporterRegistrationVO.setReporterId(reporterId);
			addNewsVO.setReporterRegistrationVO(reporterRegistrationVO);
			List addnewsls = addNewsDAO.search(addNewsVO);
			session.setAttribute("addnewsls", addnewsls);
			response.sendRedirect("Admin/searchNews.jsp");

		}
		if (string.equals("edit")) {
			CityVO cityVO = new CityVO();
			CityDAO cityDAO = new CityDAO();
			List cityls = cityDAO.search(cityVO);
			StateVO stateVO = new StateVO();
			StateDAO stateDAO = new StateDAO();
			List statels = stateDAO.search(stateVO);
			CountryVO countryVO = new CountryVO();
			CountryDAO countryDAO = new CountryDAO();
			AreaVO areaVO = new AreaVO();
			AreaDAO areaDAO = new AreaDAO();
			List countryls = countryDAO.search(countryVO);
			List areals = areaDAO.search(areaVO);
			Sub_categoryVO sub_categoryVO = new Sub_categoryVO();
			Sub_categoryDAO sub_categoryDAO = new Sub_categoryDAO();
			CategoryVO categoryVO = new CategoryVO();
			CategoryDAO categoryDAO = new CategoryDAO();
			List categoryls = categoryDAO.search(categoryVO);
			List sub_categoryls = sub_categoryDAO.search(sub_categoryVO);
			session.setAttribute("sub_categoryls", sub_categoryls);
			session.setAttribute("categoryls", categoryls);
			session.setAttribute("cityls", cityls);
			session.setAttribute("statels", statels);
			session.setAttribute("countryls", countryls);
			session.setAttribute("areals", areals);
			AddNewsDAO addNewsDAO = new AddNewsDAO();
			AddNewsVO addNewsVO = new AddNewsVO();
			int addNewsId = Integer.parseInt(request.getParameter("addNewsId"));
			addNewsVO.setAddNewsId(addNewsId);
			List addnewsls = addNewsDAO.edit(addNewsVO);
			System.out.println(addnewsls);
			System.out.println(addnewsls);
			session.setAttribute("addnewsls", addnewsls);
			response.sendRedirect("Admin/editNews.jsp");
		}
		if (string.equals("edittopandlatest")) {
			
			AddNewsDAO addNewsDAO = new AddNewsDAO();
			AddNewsVO addNewsVO = new AddNewsVO();
			int addNewsId = Integer.parseInt(request.getParameter("addNewsId"));
			addNewsVO.setAddNewsId(addNewsId);
			List addnewsls = addNewsDAO.edit(addNewsVO);
			session.setAttribute("addnewsls", addnewsls);
			response.sendRedirect("Admin/editTopAndLatestNews.jsp");
		}

		if (string.equals("topandlatest")) {
			AddNewsDAO addNewsDAO = new AddNewsDAO();
			AddNewsVO addNewsVO = new AddNewsVO();
			int reporterId = Integer.parseInt(request
					.getParameter("reporterId"));
			ReporterRegistrationVO reporterRegistrationVO = new ReporterRegistrationVO();
			reporterRegistrationVO.setReporterId(reporterId);
			addNewsVO.setReporterRegistrationVO(reporterRegistrationVO);
			List topandlatestnewsls = addNewsDAO.searchtopandlatest(addNewsVO);
			session.setAttribute("topandlatestnewsls", topandlatestnewsls);
			response.sendRedirect("Admin/searchTopAndLatestNews.jsp");
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
		AddNewsVO addNewsVO = new AddNewsVO();
		AddNewsDAO addNewsDAO = new AddNewsDAO();
		AddNewsDescriptionVO addNewsDescriptionVO = new AddNewsDescriptionVO();
		String top = request.getParameter("topNews");
		String latest = request.getParameter("latestNews");
		String topNews = null, latestNews = null;

		if (top == null) {
			topNews = "No";
		} else {
			topNews = "Yes";
		}
		if (latest == null) {
			latestNews = "No";
		} else {
			latestNews = "Yes";
		}
		
		addNewsVO.setTopNews(topNews);
		addNewsVO.setLatestNews(latestNews);
		
		if (string.equals("edittopandlatest")) {

			int addNewsId = Integer.parseInt(request.getParameter("addNewsId"));
			addNewsVO.setAddNewsId(addNewsId);
			addNewsDAO.updateTopandLatest(addNewsVO);
			response.sendRedirect("AddNews?string=topandlatest&reporterId=1");
		}
		else{
		int countryId = Integer.parseInt(request.getParameter("countryId"));
		int stateId = Integer.parseInt(request.getParameter("stateId"));
		int cityId = Integer.parseInt(request.getParameter("cityId"));
		int areaId = Integer.parseInt(request.getParameter("areaId"));
		int categoryId = Integer.parseInt(request.getParameter("categoryId"));
		int sub_categoryId = Integer.parseInt(request.getParameter("sub_categoryId"));
		int reporterId = Integer.parseInt(request.getParameter("reporterId"));
		String headLine = request.getParameter("headLine");
		String newsDes = request.getParameter("newsDes");
		String date = request.getParameter("newsDate");
		DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
		Date newsDate = null;
		try {
			newsDate = (Date) df.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		CountryVO countryVO = new CountryVO();
		StateVO stateVO = new StateVO();
		CityVO cityVO = new CityVO();
		AreaVO areaVO = new AreaVO();
		CategoryVO categoryVO = new CategoryVO();
		Sub_categoryVO sub_categoryVO = new Sub_categoryVO();
		ReporterRegistrationVO reporterRegistrationVO = new ReporterRegistrationVO();
		reporterRegistrationVO.setReporterId(reporterId);
		countryVO.setCountryId(countryId);
		stateVO.setStateId(stateId);
		cityVO.setCityId(cityId);
		areaVO.setAreaId(areaId);
		categoryVO.setCategoryId(categoryId);
		sub_categoryVO.setSub_categoryId(sub_categoryId);
		addNewsVO.setAreaVO(areaVO);
		addNewsVO.setCategoryVO(categoryVO);
		addNewsVO.setCityVO(cityVO);
		addNewsVO.setCountryVO(countryVO);
		addNewsVO.setHeadLine(headLine);
		addNewsDescriptionVO.setAddNewsDes(newsDes);
		addNewsVO.setStateVO(stateVO);
		
		addNewsVO.setSub_categoryVO(sub_categoryVO);
		addNewsVO.setNewsDate(newsDate);
		addNewsVO.setReporterRegistrationVO(reporterRegistrationVO);

		if (string.equals("update")) {
			int addNewsId = Integer.parseInt(request.getParameter("addNewsId"));
			addNewsVO.setAddNewsId(addNewsId);
			addNewsDescriptionVO.setAddNewsId(addNewsId);
			addNewsVO.setAddNewsDescriptionVO(addNewsDescriptionVO);
			addNewsDescriptionVO.setAddNewsVO(addNewsVO);
			addNewsDAO.update(addNewsVO);
			
			
		    Part filePart = request.getPart("file"); // Retrieves <input type="file" name="file">
		    String fileName = filePart.getSubmittedFileName();
		    InputStream fileContent = filePart.getInputStream();
		    // ... (do your job here)
		    fileName = addNewsId+".jpg";
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
			
			response.sendRedirect("AddNews?string=search&reporterId=1");

		} else {
			
			addNewsVO.setAddNewsDescriptionVO(addNewsDescriptionVO);
			addNewsDescriptionVO.setAddNewsVO(addNewsVO);
			
			
			addNewsDAO.insert(addNewsVO);
			List maxId =addNewsDAO.maxId(addNewsVO);
		    Part filePart = request.getPart("file"); // Retrieves <input type="file" name="file">
		    String fileName = filePart.getSubmittedFileName();
			System.out.println(" Myfile Name :: "+fileName);
			
		    InputStream fileContent = filePart.getInputStream();
		    // ... (do your job here)
		    fileName = maxId.get(0)+".jpg";
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
			response.sendRedirect("AddNews?string=add");
		}
	}}

}
