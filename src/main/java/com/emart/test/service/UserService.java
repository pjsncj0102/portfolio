package com.emart.test.service;

import java.util.List;

import com.emart.test.domain.User;


public interface UserService {

	List<User> getJoin();

	void registUser(User join);
}
