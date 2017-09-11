package com.resume.daos;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.resume.models.User;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private UserRepository repository;

	public User loadUserByUsername(String mail) {
		User user = repository.findByMail(mail);
		if (user == null) {
			throw new UsernameNotFoundException("User " + mail + " not found!");
		}
		return user;
	}

}
