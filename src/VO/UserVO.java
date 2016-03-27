package VO;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class UserVO implements Serializable {
 private int userId;
 private String firstName;
 private String lastName;
 private String gender;
 private String userName;
 private String pwd;
 private String email;
 private Date birthDate;
private String phoneNum;
private StateVO stateVO;
private CountryVO countryVO;
private AreaVO areaVO;
private CityVO cityVO;
	
 private LoginVO loginVO;
	
	public LoginVO getLoginVO() {
		return loginVO;
	}
	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}

 
 
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public int getUserId() {
	return userId;
}
public String getFirstName() {
	return firstName;
}
public void setFirstName(String firstName) {
	this.firstName = firstName;
}
public String getLastName() {
	return lastName;
}
public void setLastName(String lastName) {
	this.lastName = lastName;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getPwd() {
	return pwd;
}
public void setPwd(String pwd) {
	this.pwd = pwd;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public Date getBirthDate() {
	return birthDate;
}
public void setBirthDate(Date birthDate) {
	this.birthDate = birthDate;
}
public String getPhoneNum() {
	return phoneNum;
}
public void setPhoneNum(String phoneNum) {
	this.phoneNum = phoneNum;
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
public AreaVO getAreaVO() {
	return areaVO;
}
public void setAreaVO(AreaVO areaVO) {
	this.areaVO = areaVO;
}
public CityVO getCityVO() {
	return cityVO;
}
public void setCityVO(CityVO cityVO) {
	this.cityVO = cityVO;
}
public void setUserId(int userId) {
	this.userId = userId;
}

 
}
