package com.codingdojo.burger.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.burger.models.Burger;


public interface BurgerRepository extends CrudRepository<Burger, Long> {

	List<Burger> findAll();
}
