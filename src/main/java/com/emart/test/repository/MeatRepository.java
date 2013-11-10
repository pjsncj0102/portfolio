package com.emart.test.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.emart.test.domain.Meat;

public interface MeatRepository extends JpaRepository<Meat, Long>{

	List<Meat> findByItemLike(String searchValue);

}
