package com.emart.test.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.emart.test.domain.Home;
public interface HomeRepository extends JpaRepository<Home,Long >{

	List<Home> findByItemLike(String searchItem);


}
