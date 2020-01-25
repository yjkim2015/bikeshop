package com.yj.shop.core.security;

import java.util.Date;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.security.core.session.SessionInformation;

public class CustomSessionInformation extends SessionInformation {

	private static final long serialVersionUID = 1L;
	
	private transient String ipAddress;

	public CustomSessionInformation(Object principal, String sessionId, Date lastRequest) {
		super(principal, sessionId, lastRequest);
	}


	public CustomSessionInformation(final Object principal, final String sessionId, final Date lastRequest, final String ipAddress) {
		super(principal, sessionId, lastRequest);
		this.ipAddress = ipAddress; 
	}
	
	public String getIpAddress() {
		return ipAddress;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
	
}
