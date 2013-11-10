package com.emart.test.service;

import java.util.List;

import com.emart.test.domain.Home;

public interface HomeService {
	
	List<Home> getHome();

	Home saveHome(Home home);

	void deleteHome(Long id);

	List<Home> searchHome(String searchItem);
}
