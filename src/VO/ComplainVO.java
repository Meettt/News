package VO;

import java.io.Serializable;

@SuppressWarnings("serial")
public class ComplainVO implements Serializable {
	private int complainId;
	private String complainName;
	private String complainDes;
	private ReporterRegistrationVO reporterRegistrationVO;
	private String complainResponse;
	
	public int getComplainId() {
		return complainId;
	}
	public void setComplainId(int complainId) {
		this.complainId = complainId;
	}
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
	public ReporterRegistrationVO getReporterRegistrationVO() {
		return reporterRegistrationVO;
	}
	public void setReporterRegistrationVO(
			ReporterRegistrationVO reporterRegistrationVO) {
		this.reporterRegistrationVO = reporterRegistrationVO;
	}
	public String getComplainResponse() {
		return complainResponse;
	}
	public void setComplainResponse(String complainResponse) {
		this.complainResponse = complainResponse;
	}
	

}
