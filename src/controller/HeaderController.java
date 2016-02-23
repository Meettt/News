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

import VO.CategoryVO;
import VO.Sub_categoryVO;
import ADO.CategoryDAO;
import ADO.Sub_categoryDAO;

/**
 * Servlet implementation class HeaderController
 */
@WebServlet("/HeaderController")
public class HeaderController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HeaderController() {
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

		CategoryDAO categoryDAO = new CategoryDAO();
		List<CategoryVO> categoryList = categoryDAO.search(null);
		Sub_categoryDAO sub_categoryDAO = new Sub_categoryDAO();
		List<Sub_categoryVO> sub_categoryList = sub_categoryDAO.search(null);
		Map<String, List<Sub_categoryVO>> mp = new HashMap<String, List<Sub_categoryVO>>();
		Iterator<CategoryVO> itr = categoryList.iterator();
		while (itr.hasNext()) {
			CategoryVO categoryVO = itr.next();
			Integer catId = categoryVO.getCategoryId();
			List<Sub_categoryVO> ls = new ArrayList<Sub_categoryVO>();
			Iterator<Sub_categoryVO> itr1 = sub_categoryList.iterator();
			while (itr1.hasNext()) {
				Sub_categoryVO sub_categoryVO = itr1.next();
				Integer catIdOfSubCat = sub_categoryVO.getCategoryVO().getCategoryId();
				if (catId == catIdOfSubCat) {
					ls.add(sub_categoryVO);
				}
			}
			mp.put(categoryVO.getCategoryName(), ls);
		}
		HttpSession session = request.getSession();
		session.setAttribute("menuList", mp);
		response.sendRedirect("UserPageNews?string=user");
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
