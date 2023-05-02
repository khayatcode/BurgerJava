package com.codingdojo.burger.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.codingdojo.burger.models.Burger;
import com.codingdojo.burger.services.BurgerService;

import jakarta.validation.Valid;


@Controller
public class BurgerController {
	
	@Autowired
	private BurgerService burgerService;
	
	@GetMapping("/")
	public String index() {
		return "redirect:/home";
	}
	
	@GetMapping("/create")
	public String rCreate(@ModelAttribute("burger") Burger burger) {
		return "create.jsp";
	}
	
	@PostMapping("/createBurger")
	public String sCreate(@Valid @ModelAttribute("burger") Burger burger, BindingResult result) {
		if(result.hasErrors()) {
			return "create.jsp";	
		} else {
			burgerService.createBurger(burger);
			return "redirect:/home";	
		}
	}
	
	@GetMapping("/burger/{id}/edit")
	public String edit(@PathVariable("id") Long id, Model model) {
		Burger burger = burgerService.findBurger(id);
		model.addAttribute("burger", burger);
		return "update.jsp";	
	}
	
	@PutMapping("editBurger/{id}")
	public String sUpdate(@Valid @ModelAttribute("burger") Burger burger, BindingResult result, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("burger", burger);
			return "update.jsp";
		} else {
			burgerService.createBurger(burger);
			return "redirect:/home";
		}
	}
	
	@GetMapping("/home")
	public String show(Model model) {
		List<Burger> burgers = burgerService.allBurger();
		model.addAttribute("burgers", burgers);
		return "home.jsp";
	}

}
