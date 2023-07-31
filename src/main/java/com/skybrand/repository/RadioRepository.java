package com.skybrand.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.skybrand.entity.RadioEntity;

public interface RadioRepository extends JpaRepository<RadioEntity, String>{

	List<RadioEntity> findTop4ByCategoryIdOrderByCodeDesc(Integer cid);
}
