package VO;

import java.io.Serializable;


@SuppressWarnings("serial")
public class CountryVO implements Serializable {
	private int countryId;
	private String countryName;
	private String countryDes;

	
	public String getCountryDes() {
		return countryDes;
	}
	public void setCountryDes(String countryDes) {
		this.countryDes = countryDes;
	}
	public int getCountryId() {
		return countryId;
	}
	public void setCountryId(int countryId) {
		this.countryId = countryId;
	}
	public String getCountryName() {
		return countryName;
	}
	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

}
