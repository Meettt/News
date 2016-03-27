package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;

import bigData.NewsLogger;
import ADO.AreaDAO;
import ADO.CityDAO;
import ADO.CommentDAO;
import ADO.LikeDAO;
import ADO.StateDAO;
import ADO.Sub_categoryDAO;
import VO.AddNewsVO;
import VO.AreaVO;
import VO.CategoryVO;
import VO.CityVO;
import VO.CommentVO;
import VO.CountryVO;
import VO.LikeVO;
import VO.StateVO;
import VO.Sub_categoryVO;
import VO.UserVO;
/**
 * Servlet implementation class AjaxScript
 */
@WebServlet("/AjaxScript")
public class AjaxScript extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxScript() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out= response.getWriter();
		String string = request.getParameter("string");
		if(string.equals("state")){
		int countryId = Integer.parseInt( request.getParameter("countryId"));
		CountryVO countryVO = new CountryVO();
		countryVO.setCountryId(countryId);
		StateVO stateVO = new StateVO();
		stateVO.setCountryVO(countryVO);
		StateDAO stateDAO = new StateDAO();
		List<StateVO> statels = stateDAO.ajaxState(stateVO);
		JSONArray jsonArray = new JSONArray();
			for (StateVO stateVObean : statels) {
				jsonArray.add(stateVO.getStateId(), stateVObean.getJsonObject());
			}
			out.println(jsonArray);
		}

		if(string.equals("city")){
			int stateId = Integer.parseInt( request.getParameter("stateId"));
			StateVO  stateVO = new StateVO();
			stateVO.setStateId(stateId);
			CityVO cityVO = new CityVO();
			cityVO.setStateVO(stateVO);
			CityDAO cityDAO = new CityDAO();
			List<CityVO> cityls = cityDAO.ajaxCity(cityVO);
			System.out.println(cityls.size());
			JSONArray jsonArray = new JSONArray();
			for(CityVO cityVO2 :cityls){
				jsonArray.add(cityVO.getCityId(), cityVO2.getJsonObject());
			}
			out.println(jsonArray);

		}
		if(string.equals("area")){
			System.out.println("areaA");
		int cityId = Integer.parseInt( request.getParameter("cityId"));
		CityVO cityVO=  new CityVO();
		cityVO.setCityId(cityId);
		AreaVO areaVO= new AreaVO();
		areaVO.setCityVO(cityVO);
		AreaDAO areaDAO = new AreaDAO();
		List<AreaVO> areals=areaDAO.ajaxArea(areaVO);
		JSONArray jsonArray = new JSONArray();
		for(AreaVO areaVObean : areals){
			jsonArray.add(areaVO.getAreaId(),areaVObean.getJsonObject());
			}
			out.println(jsonArray);
		}
		if(string.equals("sub_category")){
		int categoryId = Integer.parseInt( request.getParameter("categoryId"));
		CategoryVO categoryVO= new CategoryVO();
		categoryVO.setCategoryId(categoryId);
		Sub_categoryVO sub_categoryVO= new Sub_categoryVO();
		sub_categoryVO.setCategoryVO(categoryVO);
		Sub_categoryDAO sub_categoryDAO= new Sub_categoryDAO();
		List<Sub_categoryVO> sub_categoryls= sub_categoryDAO.ajaxSub_category(sub_categoryVO);
		JSONArray jsonArray = new JSONArray();
		for(Sub_categoryVO sub_categoryVObean : sub_categoryls){
			jsonArray.add(sub_categoryVO.getSub_categoryId(),sub_categoryVObean.getJsonObject());
		}
		out.println(jsonArray);
	}
		
	
	
		if(string.equals("like")){
			Integer addNewsId = Integer.parseInt(request.getParameter("addNewsId"));
			Integer userId = Integer.parseInt(request.getParameter("userId"));
			AddNewsVO addNewsVO = new AddNewsVO();
			UserVO userVO = new UserVO();
			addNewsVO.setAddNewsId(addNewsId);
			userVO.setUserId(userId);
			LikeVO likeVO = new LikeVO();
			likeVO.setAddNewsVO(addNewsVO);
			likeVO.setUserVO(userVO);
			LikeDAO likeDAO = new LikeDAO();
			int likeCounter=likeDAO.addLike(likeVO);
			out.print(likeCounter);
			NewsLogger.INFO(request,"userId="+userId+" like addNewsId="+addNewsId);
		}
		
		if(string.equals("Dislike")){
			Integer addNewsId = Integer.parseInt(request.getParameter("addNewsId"));
			Integer userId = Integer.parseInt(request.getParameter("userId"));
			AddNewsVO addNewsVO = new AddNewsVO();
			UserVO userVO = new UserVO();
			addNewsVO.setAddNewsId(addNewsId);
			userVO.setUserId(userId);
			LikeVO likeVO = new LikeVO();
			likeVO.setAddNewsVO(addNewsVO);
			likeVO.setUserVO(userVO);
			LikeDAO likeDAO = new LikeDAO();
			int likeCounter=likeDAO.DisLike(likeVO);
			out.print(likeCounter);
			NewsLogger.INFO(request,"userId="+userId+" Dislike addNewsId="+addNewsId);
		}
		if(string.equals("likeAll")){
			Integer addNewsId = Integer.parseInt(request.getParameter("addNewsId"));
			Integer userId = Integer.parseInt(request.getParameter("userId"));
			AddNewsVO addNewsVO = new AddNewsVO();
			addNewsVO.setAddNewsId(addNewsId);
			LikeVO likeVO = new LikeVO();
			likeVO.setAddNewsVO(addNewsVO);
			LikeDAO likeDAO = new LikeDAO();
			List<LikeVO> alllike=likeDAO.AllLike(likeVO);
			if(alllike.isEmpty()){
				out.print("Like ");
				out.print("0");
			}
			else{
				int like =0;
				for (LikeVO likeVO2 : alllike) {
					if (likeVO2.getUserVO().getUserId() == userId)
						like = 1;
				}
				if (like == 1)
					out.print("DisLike ");
				else
					out.print("Like ");
				likeVO =(LikeVO)alllike.get(0);
				out.print(likeVO.getLikeCounter());
			}	}
		
		if(string.equals("userLike")){
			Integer addNewsId = Integer.parseInt(request.getParameter("addNewsId"));
			AddNewsVO addNewsVO = new AddNewsVO();
			addNewsVO.setAddNewsId(addNewsId);
			LikeVO likeVO = new LikeVO();
			likeVO.setAddNewsVO(addNewsVO);
			LikeDAO likeDAO = new LikeDAO();
			List<LikeVO> userforlike = likeDAO.searchUserforLike(likeVO);
			JSONArray jsonArray= new JSONArray();
			for(LikeVO likeVO2:userforlike){
				jsonArray.add(likeVO2.getJsonObject());
			}
			out.print(jsonArray);
		}
		
		if(string.equals("comment")){
			Integer addNewsId = Integer.parseInt(request.getParameter("addNewsId"));
			Integer userId = Integer.parseInt(request.getParameter("userId"));
			CommentVO commentVO = new CommentVO();
			CommentDAO commentDAO =new CommentDAO();
			String comment= request.getParameter("comment");
			UserVO userVO =new UserVO();
			userVO.setUserId(userId);
			AddNewsVO addNewsVO =new AddNewsVO();
			addNewsVO.setAddNewsId(addNewsId);
			commentVO.setAddNewsVO(addNewsVO);
			commentVO.setUserVO(userVO);
			commentVO.setComment(comment);
			commentDAO.insert(commentVO);
			List<CommentVO> commentls = commentDAO.ajaxComment(commentVO);
			JSONArray jsonArray = new JSONArray();
			for(CommentVO commentVO2 :commentls){
				jsonArray.add(commentVO2.getJsonObject());
			}
			 out.println(jsonArray);
			 NewsLogger.INFO(request,"userId="+userId+" comment addNewsId="+addNewsId);
		}
		if(string.equals("commentlist")){
			Integer addNewsId = Integer.parseInt(request.getParameter("addNewsId"));
			Integer userId = Integer.parseInt(request.getParameter("userId"));
			CommentVO commentVO = new CommentVO();
			CommentDAO commentDAO =new CommentDAO();
			UserVO userVO =new UserVO();
			userVO.setUserId(userId);
			AddNewsVO addNewsVO =new AddNewsVO();
			addNewsVO.setAddNewsId(addNewsId);
			commentVO.setAddNewsVO(addNewsVO);
			commentVO.setUserVO(userVO);
			List<CommentVO> commentls = commentDAO.ajaxComment(commentVO);
			JSONArray jsonArray = new JSONArray();
			for(CommentVO commentVO2 :commentls){
				jsonArray.add(commentVO2.getJsonObject());
			}
			 out.println(jsonArray);
		}
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
