package com.emart.test.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.emart.test.domain.Home;
import com.emart.test.repository.HomeRepository;
import com.emart.test.service.HomeService;

@Service
public class HomeServiceImpl implements HomeService{

	@Autowired HomeRepository homeRepository;
	
	@Override
	public List<Home> getHome() {
		return homeRepository.findAll();
	}

	@Override
	public Home saveHome(Home home) {
		return homeRepository.saveAndFlush(home);
	}

	@Override
	public void deleteHome(Long id) {
		homeRepository.delete(id);
	}

	@Override
	public List<Home> searchHome(String searchItem) {
		return homeRepository.findByItemLike("%"+searchItem+"%");
	}
}
