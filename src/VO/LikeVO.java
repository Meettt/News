package VO;

import org.json.simple.JSONObject;

public class LikeVO {
private int likeCounter;
private AddNewsVO addNewsVO;
private UserVO userVO;
private int likeId;
private JSONObject jsonObject = new JSONObject();
public int getLikeId() {
	return likeId;
}
public void setLikeId(int likeId) {
	this.likeId = likeId;
}
public int getLikeCounter() {
	return likeCounter;
}
public void setLikeCounter(int likeCounter) {
	this.likeCounter = likeCounter;
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
@SuppressWarnings("unchecked")
public JSONObject getJsonObject() {
	jsonObject.put("name", userVO.getName());
	return jsonObject;
}
}
