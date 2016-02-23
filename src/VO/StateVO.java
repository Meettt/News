package VO;

import java.io.Serializable;

import org.json.simple.JSONObject;


public class StateVO implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int stateId;
	private String stateName;
	private String stateDes;
	private CountryVO countryVO;
	JSONObject jsonObject = new JSONObject();
	
	public String getStateDes() {
		return stateDes;
	}
	public void setStateDes(String stateDes) {
		this.stateDes = stateDes;
	}
	public int getStateId() {
		return stateId;
	}
	public void setStateId(int stateId) {
		this.stateId = stateId;
	}
	public String getStateName() {
		return stateName;
	}
	public void setStateName(String stateName) {
		this.stateName = stateName;
	}
	public CountryVO getCountryVO() {
		return countryVO;
	}
	public void setCountryVO(CountryVO countryVO) {
		this.countryVO = countryVO;
	}
	@SuppressWarnings("unchecked")
	public JSONObject getJsonObject(){
		
		jsonObject.put("stateId", stateId);
		jsonObject.put("stateName", stateName);
		return jsonObject;
	}
}
