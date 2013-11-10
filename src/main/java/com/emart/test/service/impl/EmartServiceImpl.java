package com.emart.test.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.emart.test.domain.Fish;
import com.emart.test.domain.Fruit;
import com.emart.test.domain.Home;
import com.emart.test.domain.Meat;
import com.emart.test.service.EmartService;
import com.emart.test.service.FishService;
import com.emart.test.service.FruitService;
import com.emart.test.service.HomeService;
import com.emart.test.service.MeatService;

@Service
public class EmartServiceImpl implements EmartService {
	@Autowired private FishService fishService;
	@Autowired private MeatService meatService;
	@Autowired private FruitService fruitService;
	@Autowired private HomeService homeService;

	@Override
	public List<Object> searchEmartItems(String searchItem) {
		List<Object> rrr = new ArrayList<Object>();
		
		List<Fish> fishList = fishService.searchFish(searchItem);
		List<Meat> meatList = meatService.searchMeat(searchItem);
		List<Fruit> fruitList = fruitService.searchFruit(searchItem);
		List<Home> homeList = homeService.searchHome(searchItem);
		
		if(fishList != null & fishList.size() > 0) {
			rrr.addAll(fishList);
		}
		if(meatList != null & meatList.size() > 0) {
			rrr.addAll(meatList);
		}
		if(fruitList != null & fruitList.size() > 0) {
			rrr.addAll(fruitList);
		}
		if(homeList != null & homeList.size() > 0) {
			rrr.addAll(homeList);
		}
		return rrr;
	}
}
