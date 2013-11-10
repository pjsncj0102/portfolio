package com.emart.test.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.emart.test.domain.Fruit;
import com.emart.test.domain.Meat;
import com.emart.test.repository.FruitRepository;
import com.emart.test.service.FruitService;

@Service
public class FruitServiceImpl implements FruitService{

	@Autowired FruitRepository fruitRepository;
	
	@Override
	public List<Fruit> getFruit() {
		return fruitRepository.findAll();
	}

	@Override
	public Fruit saveFruit(Fruit fruit) {
		return fruitRepository.saveAndFlush(fruit);
	}

	@Override
	public void deleteFruit(Long id) {
		fruitRepository.delete(id);
	}

	@Override
	public List<Fruit> searchFruit(String searchItem) {
		return fruitRepository.findByItemLike("%"+searchItem+"%");
	}
}
