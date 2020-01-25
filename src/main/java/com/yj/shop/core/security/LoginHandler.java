package com.yj.shop.core.security;

import java.io.IOException;
import java.util.Date;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.session.SessionInformation;
import org.springframework.security.web.WebAttributes;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.yj.shop.vo.UserVo;

public class LoginHandler implements AuthenticationSuccessHandler, AuthenticationFailureHandler {

	private static final Logger LOGGER = LoggerFactory.getLogger(LoginHandler.class);
	
	@Resource(name="sessionRegistrySessionIds")
	private transient Map<String, SessionInformation> sessionIds;
	
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		
		response.getWriter().print("{\"result\":\"FAIL\", \"reason\":\"ID / PASSWORD瑜� �솗�씤�븯�꽭�슂.\"}");
		response.getWriter().flush(); 
	}

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		final HttpSession session = request.getSession();
		session.removeAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);
		
		final UserVo userVo = (UserVo) authentication.getDetails();
		userVo.setSessionId(session.getId());
		userVo.setIpAddress(request.getRemoteAddr());
		session.setAttribute("USER", userVo);
		
		final SessionInformation information = new CustomSessionInformation(authentication.getDetails(), session.getId(), new Date(), request.getRemoteAddr());
		sessionIds.put(session.getId(), information);

		String redirectUrl = request.getContextPath() +"/main";
		final String requestURI = (String)session.getAttribute("requestURI");
		
		if ( requestURI != null ) {
			redirectUrl = requestURI;
		}
		
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		response.getWriter().print("{\"result\":\"OK\",\"redirectUrl\":\"" + redirectUrl + "\"}");
		response.getWriter().flush();
	}

}
