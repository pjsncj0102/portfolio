package com.emart.test.service;

import java.util.List;

import com.emart.test.domain.Fish;

public interface FishService {

	List<Fish> getFish();

	Fish saveFish(Fish fish);

	void deleteFish(Long id);

	List<Fish> searchFish(String searchItem);
}
