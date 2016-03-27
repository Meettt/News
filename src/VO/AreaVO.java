package VO;

import org.json.simple.JSONObject;

public class AreaVO {
	private int areaId;
	private String areaName;
	private String areaDes;
	private CityVO cityVO;
	private StateVO stateVO;
	private CountryVO countryVO;
	private JSONObject jsonObject = new JSONObject();
	public JSONObject getJsonObject() {
		jsonObject.put("areaId", areaId);
		jsonObject.put("areaName", areaName);
		
		return jsonObject;
	}
	public void setJsonObject(JSONObject jsonObject) {
		this.jsonObject = jsonObject;
	}
	

	public int getAreaId() {
		return areaId;
	}
	public void setAreaId(int areaId) {
		this.areaId = areaId;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public String getAreaDes() {
		return areaDes;
	}
	public void setAreaDes(String areaDes) {
		this.areaDes = areaDes;
	}
	public CityVO getCityVO() {
		return cityVO;
	}
	public void setCityVO(CityVO cityVO) {
		this.cityVO = cityVO;
	}
	public StateVO getStateVO() {
		return stateVO;
	}
	public void setStateVO(StateVO stateVO) {
		this.stateVO = stateVO;
	}
	public CountryVO getCountryVO() {
		return countryVO;
	}
	public void setCountryVO(CountryVO countryVO) {
		this.countryVO = countryVO;
	}
	
	}
