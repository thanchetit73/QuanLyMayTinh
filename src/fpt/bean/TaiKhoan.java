/*
* (C)Copyright 2019 InternDN19.01
*
* @author MyPC
* @date 18 thg 2, 2019
* @version 1.0
*/
package fpt.bean;

/**
 * @author MyPC
 *
 */
public class TaiKhoan {
	public TaiKhoan(String userName, String password) {
		super();
		this.userName = userName;
		this.password = password;
	}
	public TaiKhoan() {};
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	private String userName;
	private String password;

}
