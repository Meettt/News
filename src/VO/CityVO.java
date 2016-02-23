package VO;

import java.io.Serializable;

import org.json.simple.JSONObject;

@SuppressWarnings("serial")
public class CityVO implements Serializable {
	private int cityId;
	private String cityName;
	private String cityDes;
	private StateVO stateVO;
	private CountryVO countryVO;
	private JSONObject jsonObject = new JSONObject();

	public int getCityId() {
		return cityId;
	}

	public String getCityDes() {
		return cityDes;
	}

	public void setCityDes(String cityDes) {
		this.cityDes = cityDes;
	}

	public void setCityId(int cityId) {
		this.cityId = cityId;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
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

	@SuppressWarnings("unchecked")
	public JSONObject getJsonObject() {
		jsonObject.put("cityId", cityId);
		jsonObject.put("cityName", cityName);
		return jsonObject;
	}
}
