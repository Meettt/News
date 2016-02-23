package VO;

import java.io.Serializable;

@SuppressWarnings("serial")
public class AddNewsDescriptionVO implements Serializable {
	private int addNewsId;
	public int getAddNewsId() {
		return addNewsId;
	}
	public void setAddNewsId(int addNewsId) {
		this.addNewsId = addNewsId;
	}
	private AddNewsVO addNewsVO;
	private String addNewsDes;
	public AddNewsVO getAddNewsVO() {
		return addNewsVO;
	}
	public void setAddNewsVO(AddNewsVO addNewsVO) {
		this.addNewsVO = addNewsVO;
	}
	public String getAddNewsDes() {
		return addNewsDes;
	}
	public void setAddNewsDes(String addNewsDes) {
		this.addNewsDes = addNewsDes;
	}
	

}
