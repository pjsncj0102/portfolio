package com.emart.test.service;

import java.util.List;

import com.emart.test.domain.Meat;

public interface MeatService {
	List<Meat> getMeat();
	Meat saveMeat(Meat meat);
	void deleteMeat(Long id);
	List<Meat> searchMeat(String searchItem);
}
