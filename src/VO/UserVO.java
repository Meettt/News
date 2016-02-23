package VO;

import java.io.Serializable;

@SuppressWarnings("serial")
public class UserVO implements Serializable {
 private int userId;
 private String name;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
}

 
}
