package VO;

import org.json.simple.JSONObject;

public class CommentVO {
	private int commentCounter;
	private int commentId;
	private String comment;
	private AddNewsVO addNewsVO;
	private UserVO userVO;
	private JSONObject jsonObject = new JSONObject();

	public JSONObject getJsonObject() {
		
		jsonObject.put("commentId", commentId);
		jsonObject.put("comment", comment);
		return jsonObject;
	}

	public void setJsonObject(JSONObject jsonObject) {
		this.jsonObject = jsonObject;
	}
	public int getCommentCounter() {
		return commentCounter;
	}
	public void setCommentCounter(int commentCounter) {
		this.commentCounter = commentCounter;
	}
	public int getCommentId() {
		return commentId;
	}
	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public AddNewsVO getAddNewsVO() {
		return addNewsVO;
	}
	public void setAddNewsVO(AddNewsVO addNewsVO) {
		this.addNewsVO = addNewsVO;
	}
	public UserVO getUserVO() {
		return userVO;
	}
	public void setUserVO(UserVO userVO) {
		this.userVO = userVO;
	}
	
	

}
