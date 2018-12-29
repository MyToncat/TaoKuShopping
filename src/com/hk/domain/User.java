package com.hk.domain;

import java.util.Date;

/**
 * CREATE TABLE `user` (
  `uid` VARCHAR(32) NOT NULL,
  `username` VARCHAR(20) DEFAULT NULL,
  `password` VARCHAR(20) DEFAULT NULL,
  `name` VARCHAR(20) DEFAULT NULL,
  `photo` VARCHAR(64) DEFAULT NULL,
  `email` VARCHAR(30) DEFAULT NULL,
  `telephone` VARCHAR(20) DEFAULT NULL,
  `birthday` DATE DEFAULT NULL,
  `sex` VARCHAR(10) DEFAULT NULL,
  `state` INT(11) DEFAULT NULL,
  `code` VARCHAR(64) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

 * @author karen
 *
 */
//·â×°µÄ¿ì½Ý¼ü
public class User {
	private String uid;
	private String username;
	private String password;
	private String name;
	private String photo;
	private String email;
	private String birthday;
	private String telephone;
	private String sex;
	private int state;
	private String code;
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public User(String uid, String username, String password, String name, String photo, String email, String birthday,
			String telephone, String sex, int state, String code) {
		super();
		this.uid = uid;
		this.username = username;
		this.password = password;
		this.name = name;
		this.photo = photo;
		this.email = email;
		this.birthday = birthday;
		this.telephone = telephone;
		this.sex = sex;
		this.state = state;
		this.code = code;
	}
	public User() {
		super();
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", username=" + username + ", password=" + password + ", name=" + name + ", photo="
				+ photo + ", email=" + email + ", birthday=" + birthday + ", telephone=" + telephone + ", sex=" + sex
				+ ", state=" + state + ", code=" + code + "]";
	}
}
