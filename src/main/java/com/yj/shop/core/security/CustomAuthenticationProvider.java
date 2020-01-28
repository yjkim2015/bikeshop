package com.yj.shop.core.security;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import com.yj.shop.user.UserService;
import com.yj.shop.utils.EncryptionUtil;
import com.yj.shop.vo.UserVo;

public class CustomAuthenticationProvider implements AuthenticationProvider{

	private static final Logger LOGGER = LoggerFactory.getLogger(CustomAuthenticationProvider.class);
	
	@Autowired
	private UserService userService;
	
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		
		final String loginId = authentication.getName();
		final String passwd = (String) authentication.getCredentials();
		
		UserVo userVo = new UserVo();
		
		userVo.setUserId(loginId);
		
		try {
			if ( loginId.equals("ROOT") ) {
				userVo.setUserPassword(passwd);
			}
			else {
				userVo.setUserPassword(EncryptionUtil.encryptSHA512(passwd));
			}
			userVo = userService.LoginCheck(userVo);
			if ( userVo == null ) {
				throw new BadCredentialsException("아이디 또는 비밀번호를 확인바랍니다. ");
			}
			else {
				userVo.setLastLoginDate(new Date());
				userService.updateUser(userVo);
			}
			
		} catch (Exception ex) {
			LOGGER.error(ex.getMessage(), ex);
			throw new BadCredentialsException(ex.getMessage(), ex);
		}

		
		final List<GrantedAuthority> roles = new ArrayList<>();
		roles.add(new SimpleGrantedAuthority("ROLE_USER"));
		
		final UsernamePasswordAuthenticationToken result = new UsernamePasswordAuthenticationToken(loginId, passwd, roles);
		
		result.setDetails(userVo);
		return result;
		
	}

	@Override
	public boolean supports(Class<?> authentication) {
		return authentication.equals(UsernamePasswordAuthenticationToken.class);
	}
}
