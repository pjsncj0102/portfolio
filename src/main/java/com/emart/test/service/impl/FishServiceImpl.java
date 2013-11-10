package com.emart.test.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.emart.test.domain.Fish;
import com.emart.test.repository.FishRepository;
import com.emart.test.service.FishService;

@Service
public class FishServiceImpl implements FishService{

	@Autowired FishRepository fishRepository;
	
	@Override
	@Cacheable(value="fishCache")
	public List<Fish> getFish() {
		return fishRepository.findAll();
	}

	@Override
	@CacheEvict(value = "fishCache", allEntries=true)
	public Fish saveFish(Fish fish) {
		return fishRepository.saveAndFlush(fish);
	}

	@Override
	@CacheEvict(value = "fishCache", allEntries=true)
	public void deleteFish(Long id) {
		fishRepository.delete(id);
	}

	@Override
	public List<Fish> searchFish(String searchItem) {
		return fishRepository.findByItemLike("%"+searchItem+"%");
	}
}
