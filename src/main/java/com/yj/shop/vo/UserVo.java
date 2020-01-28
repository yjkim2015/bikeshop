package com.yj.shop.vo;

import java.util.Date;

public class UserVo {
	private String userId;
	private String userName;
	private String userPassword;
	private String birthDay;
	private String Gender;
	private String postNumber;
	private String mainAddress;
	private String subAddress;
	private String contact;
	private String email;
	private String phone;
	private String privacyStateYn;
	private int balance;
	private int savedMoney;
	private String userPoint;
	private Date lastLoginDate;
	private String sessionId;
	private String ipAddress;
	
	public String getUserId() {
		return userId;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public String getUserName() {
		return userName;
	}
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getUserPassword() {
		return userPassword;
	}
	
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	
	public String getBirthDay() {
		return birthDay;
	}
	
	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}
	
	public String getGender() {
		return Gender;
	}
	
	public void setGender(String gender) {
		Gender = gender;
	}
	
	public String getPostNumber() {
		return postNumber;
	}
	
	public void setPostNumber(String postNumber) {
		this.postNumber = postNumber;
	}
	
	public String getMainAddress() {
		return mainAddress;
	}
	
	public void setMainAddress(String mainAddress) {
		this.mainAddress = mainAddress;
	}
	
	public String getSubAddress() {
		return subAddress;
	}
	
	public void setSubAddress(String subAddress) {
		this.subAddress = subAddress;
	}
	
	public String getContact() {
		return contact;
	}
	
	public void setContact(String contact) {
		this.contact = contact;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getPrivacyStateYn() {
		return privacyStateYn;
	}
	
	public void setPrivacyStateYn(String privacyStateYn) {
		this.privacyStateYn = privacyStateYn;
	}
	
	public int getBalance() {
		return balance;
	}
	
	public void setBalance(int balance) {
		this.balance = balance;
	}
	
	public int getSavedMoney() {
		return savedMoney;
	}
	
	public void setSavedMoney(int savedMoney) {
		this.savedMoney = savedMoney;
	}
	
	public String getUserPoint() {
		return userPoint;
	}
	
	public void setUserPoint(String userPoint) {
		this.userPoint = userPoint;
	}
	
	public Date getLastLoginDate() {
		return lastLoginDate;
	}
	
	public void setLastLoginDate(Date lastLoginDate) {
		this.lastLoginDate = lastLoginDate;
	}

	public String getSessionId() {
		return sessionId;
	}
	
	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}
	
	public String getIpAddress() {
		return ipAddress;
	}
	
	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	@Override
	public String toString() {
		return "UserVo [userId=" + userId + ", userName=" + userName + ", userPassword=" + userPassword + ", birthDay="
				+ birthDay + ", Gender=" + Gender + ", postNumber=" + postNumber + ", mainAddress=" + mainAddress
				+ ", subAddress=" + subAddress + ", contact=" + contact + ", email=" + email + ", phone=" + phone
				+ ", privacyStateYn=" + privacyStateYn + ", balance=" + balance + ", savedMoney=" + savedMoney
				+ ", userPoint=" + userPoint + ", lastLoginDate=" + lastLoginDate + ", sessionId=" + sessionId
				+ ", ipAddress=" + ipAddress + "]";
	}

	
}
