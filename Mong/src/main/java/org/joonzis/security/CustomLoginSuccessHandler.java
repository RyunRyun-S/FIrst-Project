package org.joonzis.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import lombok.extern.log4j.Log4j;

@Log4j
public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler{

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		
		log.info("Login Success");
		
		List<String> roleNames = new ArrayList<String>();
		
		for(GrantedAuthority auth : authentication.getAuthorities()) {
			roleNames.add(auth.getAuthority());
		}
		
		log.info("ROLE NAMES : " + roleNames);
		
		if(roleNames.contains("ROLE_ADMIN")) {
			response.sendRedirect("/product/mainlist");
			return;
		}
		
		if(roleNames.contains("ROLE_MEMBER")) {
			response.sendRedirect("/product/mainlistr");
			return;
		}
		
		if(roleNames.contains("ROLE_USER")) {
			response.sendRedirect("/product/mainlist");
			return;
		}
		
		response.sendRedirect("/product/mainlist");
	}
	
	
	
	
}
