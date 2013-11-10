package com.emart.test.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.emart.test.domain.Meat;
import com.emart.test.repository.MeatRepository;
import com.emart.test.service.MeatService;

@Service
public class MeatServiceImpl implements MeatService{

	@Autowired private MeatRepository meatRepository;
	
	@Override
	@Cacheable(value="meatCache")
	public List<Meat> getMeat() {
		return meatRepository.findAll();
	}

	@Override
	@CacheEvict(value="meatCache",  allEntries=true)
	public Meat saveMeat(Meat meat) {
		return meatRepository.saveAndFlush(meat);
	}

	@Override
	@CacheEvict(value="meatCache",  allEntries=true)
	public void deleteMeat(Long id) {
		meatRepository.delete(id);
	}

	@Override
	public List<Meat> searchMeat(String searchItem) {
		return meatRepository.findByItemLike("%"+searchItem+"%");
	}
}
