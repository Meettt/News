package VO;

import java.io.Serializable;

@SuppressWarnings("serial")
public class UserComplainVO implements Serializable {
	private int complainId;
	public int getComplainId() {
		return complainId;
	}
	public void setComplainId(int complainId) {
		this.complainId = complainId;
	}
	private String complainName;
	private String complainDes;
	private UserVO userVO;
	private String complainResponse;
	
	public String getComplainName() {
		return complainName;
	}
	public void setComplainName(String complainName) {
		this.complainName = complainName;
	}
	public String getComplainDes() {
		return complainDes;
	}
	public void setComplainDes(String complainDes) {
		this.complainDes = complainDes;
	}
	public UserVO getUserVO() {
		return userVO;
	}
	public void setUserVO(UserVO userVO) {
		this.userVO = userVO;
	}
	public String getComplainResponse() {
		return complainResponse;
	}
	public void setComplainResponse(String complainResponse) {
		this.complainResponse = complainResponse;
	}

}
