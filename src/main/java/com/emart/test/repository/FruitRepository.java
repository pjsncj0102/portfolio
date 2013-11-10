package com.emart.test.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.emart.test.domain.Fruit;
import com.emart.test.domain.Meat;

public interface FruitRepository extends JpaRepository<Fruit, Long>{

	List<Fruit> findByItemLike(String searchItem);

}
