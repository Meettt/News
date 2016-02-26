package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;

import ADO.CityDAO;
import ADO.LikeDAO;
import ADO.StateDAO;
import VO.AddNewsVO;
import VO.CityVO;
import VO.CountryVO;
import VO.LikeVO;
import VO.StateVO;
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
		for(StateVO stateVObean : statels){
			jsonArray.add(stateVO.getStateId(),stateVObean.getJsonObject());
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
				for(LikeVO likeVO2 : alllike){
					
					if(likeVO2.getUserVO().getUserId()==userId)
						like=1;	
				}
				if(like==1)out.print("DisLike ");
				else out.print("Like ");
					
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
				System.out.println("----------------"+likeVO2.getUserVO().getName());
				jsonArray.add(likeVO2.getJsonObject());
			}
			out.print(jsonArray);
			
			
		}
	
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
