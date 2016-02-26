package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ADO.AddNewsDAO;
import ADO.CategoryDAO;
import VO.AddNewsVO;
import VO.CategoryVO;

/**
 * Servlet implementation class UserPageNews
 */
@WebServlet("/UserPageNews")
public class UserPageNews extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserPageNews() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String string = request.getParameter("string");
		AddNewsDAO addNewsDAO = new AddNewsDAO();
		AddNewsVO addNewsVO = new AddNewsVO();
		HttpSession session = request.getSession();
		if (string.equals("category")) {
			String categoryName = request.getParameter("categoryName");
			CategoryVO categoryVO = new CategoryVO();
			categoryVO.setCategoryName(categoryName);
			addNewsVO.setCategoryVO(categoryVO);
			List<AddNewsVO> specifcategoryls = addNewsDAO
					.searchSpecifCategoryNews(addNewsVO);
			session.setAttribute("specifcategoryls", specifcategoryls);
			response.sendRedirect("User/specificCategory.jsp?userId=2");
		}
		if (string.equals("user")) {

			List<AddNewsVO> topls = addNewsDAO.searchtop(null);

			session.setAttribute("topls", topls);

			CategoryDAO categoryDAO = new CategoryDAO();
			List<CategoryVO> categoryls = categoryDAO.search(null);
			List<AddNewsVO> addnewsls = addNewsDAO.searchAllNews(null);
			Map<String, List<AddNewsVO>> mp = new HashMap<String, List<AddNewsVO>>();
			Iterator<CategoryVO> iterator = categoryls.iterator();
			while (iterator.hasNext()) {
				CategoryVO categoryVO = iterator.next();
				Integer categoryId = categoryVO.getCategoryId();
				List<AddNewsVO> ls = new ArrayList<AddNewsVO>();
				Iterator<AddNewsVO> iterator2 = addnewsls.iterator();
				while (iterator2.hasNext()) {
					AddNewsVO addNewsVO2 = iterator2.next();
					Integer addnewsId = addNewsVO2.getCategoryVO()
							.getCategoryId();
					if (categoryId == addnewsId) {
						ls.add(addNewsVO2);
					}
				}
				mp.put(categoryVO.getCategoryName(), ls);
			}
			session.setAttribute("addnewsmap", mp);
			response.sendRedirect("User/userIndex.jsp?userId=2");
		}
		if (string.equals("specific")) {
			Integer addNewsId = Integer.parseInt(request
					.getParameter("addNewsId"));
			addNewsVO.setAddNewsId(addNewsId);
			List<AddNewsVO> addnewsls = addNewsDAO.searchSpecific(addNewsVO);
			session.setAttribute("addnewsls", addnewsls);
			response.sendRedirect("User/specificNews.jsp?addNewsId="+addNewsId+"&userId=2");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
