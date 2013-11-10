package com.emart.test.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.emart.test.domain.Fish;

public interface FishRepository  extends JpaRepository<Fish, Long>{

	List<Fish> findByItemLike(String string);
}
