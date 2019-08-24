package com.ditsikts.tvseries.service;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

public class AuthenticationService {

    static final long EXPIRATIONTIME = 864_000_00;
    static final String SIGNINGKEY = "signingKey";
    static final String BEARER_PREFIX = "Bearer";

    static public void addJWTToken(HttpServletResponse response, Authentication auth) {
    	User user = ((User) auth.getPrincipal());
    	var roles = user.getAuthorities()
                .stream()
                .map(GrantedAuthority::getAuthority)
                .collect(Collectors.toList());
    	
        String JwtToken = Jwts.builder().setSubject(auth.getName())
                .setExpiration(new Date(System.currentTimeMillis() + EXPIRATIONTIME))
                .claim("rol", roles)
                .signWith(SignatureAlgorithm.HS512, SIGNINGKEY)
                .compact();
        response.addHeader("Authorization", BEARER_PREFIX + " " + JwtToken);
        response.addHeader("Access-Control-Expose-Headers", "Authorization");
    }

    static public Authentication getAuthentication(HttpServletRequest request) {
        String token = request.getHeader("Authorization");
        if (token != null) {
        	
        	var parsedToken = Jwts.parser()
            .setSigningKey(SIGNINGKEY)
            .parseClaimsJws(token.replace(BEARER_PREFIX, ""));
        	
        	var username = parsedToken
                    .getBody()
                    .getSubject();

            var authorities = ((List<?>) parsedToken.getBody()
                .get("rol")).stream()
                .map(authority -> new SimpleGrantedAuthority((String) authority))
                .collect(Collectors.toList());

            if (username != null) {
                return new UsernamePasswordAuthenticationToken(username, null, authorities);
            } else {
                throw new RuntimeException("Authentication failed");
            }
        }
        return null;
    }
}