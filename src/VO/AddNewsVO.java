package VO;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class AddNewsVO implements Serializable {
	private StateVO stateVO;
	private CountryVO countryVO;
	private AreaVO areaVO;
	private CityVO cityVO;
	private CategoryVO categoryVO;
	private Sub_categoryVO sub_categoryVO;
	private int addNewsId;
	private String headLine;
	private String topNews;
	private String latestNews;
	private Date newsDate;
	private AddNewsDescriptionVO addNewsDescriptionVO;
	public AddNewsDescriptionVO getAddNewsDescriptionVO() {
		return addNewsDescriptionVO;
	}
	public void setAddNewsDescriptionVO(AddNewsDescriptionVO addNewsDescriptionVO) {
		this.addNewsDescriptionVO = addNewsDescriptionVO;
	}
	private ReporterRegistrationVO reporterRegistrationVO;
		public ReporterRegistrationVO getReporterRegistrationVO() {
		return reporterRegistrationVO;
	}
	public void setReporterRegistrationVO(
			ReporterRegistrationVO reporterRegistrationVO) {
		this.reporterRegistrationVO = reporterRegistrationVO;
	}
		public Date getNewsDate() {
		return newsDate;
	}
	public void setNewsDate(Date newsDate) {
		this.newsDate = newsDate;
	}
		public String getTopNews() {
		return topNews;
	}
	public void setTopNews(String topNews) {
		this.topNews = topNews;
	}
	public String getLatestNews() {
		return latestNews;
	}
	public void setLatestNews(String latestNews) {
		this.latestNews = latestNews;
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
	public CategoryVO getCategoryVO() {
		return categoryVO;
	}
	public void setCategoryVO(CategoryVO categoryVO) {
		this.categoryVO = categoryVO;
	}
	public Sub_categoryVO getSub_categoryVO() {
		return sub_categoryVO;
	}
	public void setSub_categoryVO(Sub_categoryVO sub_categoryVO) {
		this.sub_categoryVO = sub_categoryVO;
	}
	public int getAddNewsId() {
		return addNewsId;
	}
	public void setAddNewsId(int addNewId) {
		this.addNewsId = addNewId;
	}
	public String getHeadLine() {
		return headLine;
	}
	public void setHeadLine(String headLine) {
		this.headLine = headLine;
	}
	
	

}
