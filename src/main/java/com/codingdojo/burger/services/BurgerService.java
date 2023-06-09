package com.codingdojo.burger.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.burger.models.Burger;
import com.codingdojo.burger.repositories.BurgerRepository;

@Service
public class BurgerService {
	
	@Autowired
	private BurgerRepository burgerRepo;
	
	public List<Burger> allBurger(){
		return burgerRepo.findAll();
	}
	
	public Burger createBurger(Burger b) {
		return burgerRepo.save(b);
	}
	
	public Burger findBurger(Long id) {
		Optional<Burger> optionalBurger = burgerRepo.findById(id);
		if(optionalBurger.isPresent()) {
            return optionalBurger.get();
        } else {
            return null;
        }
	}
	
}
