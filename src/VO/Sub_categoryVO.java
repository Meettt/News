package VO;

public class Sub_categoryVO {
	private int sub_categoryId;
	private String sub_categoryName;
	private String sub_categoryDes;
	private CategoryVO categoryVO;
	
	
	public int getSub_categoryId() {
		return sub_categoryId;
	}
	public void setSub_categoryId(int sub_categoryId) {
		this.sub_categoryId = sub_categoryId;
	}
	public String getSub_categoryName() {
		return sub_categoryName;
	}
	public void setSub_categoryName(String sub_categoryName) {
		this.sub_categoryName = sub_categoryName;
	}
	public String getSub_categoryDes() {
		return sub_categoryDes;
	}
	public void setSub_categoryDes(String sub_categoryDes) {
		this.sub_categoryDes = sub_categoryDes;
	}
	public CategoryVO getCategoryVO() {
		return categoryVO;
	}
	public void setCategoryVO(CategoryVO categoryVO) {
		this.categoryVO = categoryVO;
	}
	
	
	

}
