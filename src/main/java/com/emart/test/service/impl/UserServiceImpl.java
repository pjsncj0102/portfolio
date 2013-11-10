package com.emart.test.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.emart.test.domain.User;
import com.emart.test.repository.UserRepository;
import com.emart.test.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired UserRepository userRepository;
	@Autowired private PasswordEncoder passwordEncoder;

	@Override
	public List<User> getJoin() {
		return userRepository.findAll();
	}

	@Override
	public void registUser(User user) {
		user.setPasswd(passwordEncoder.encode(user.getPasswd()));
		userRepository.saveAndFlush(user);
	}
	
}
