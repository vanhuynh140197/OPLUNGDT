package com.oplungdienthoai.services.impl;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.oplungdienthoai.dao.UsersDAO;
import com.oplungdienthoai.model.UsersEntity;

public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private UsersDAO usersDAO;

	@Override
	public UserDetails loadUserByUsername(String userName)
			throws UsernameNotFoundException {
		UsersEntity user = usersDAO.getUsersName(userName);
		if (user == null) {
			throw new UsernameNotFoundException("User not found");
		}
		Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
		String role = "ROLE_" + user.getRoleId();
		grantedAuthorities.add(new SimpleGrantedAuthority(role));

		return new org.springframework.security.core.userdetails.User(
				user.getUserName().trim(), user.getPasswords().trim(), grantedAuthorities);
	}

}
