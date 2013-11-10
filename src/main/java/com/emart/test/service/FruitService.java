package com.emart.test.service;

import java.util.List;

import com.emart.test.domain.Fruit;
import com.emart.test.domain.Meat;

public interface FruitService {

	List<Fruit> getFruit();

	Fruit saveFruit(Fruit fruit);

	void deleteFruit(Long id);

	List<Fruit> searchFruit(String searchItem);
}
