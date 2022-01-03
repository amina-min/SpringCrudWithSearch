package com.example.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.example.model.UserModel;
import com.example.repo.userRepo;

@Controller
public class UserController {

	
	@Autowired
	private userRepo repo;

	
	
	
	
	
	@GetMapping("/creatUser")
	public ModelAndView createForm() {
		Map<String ,Object> map = new HashMap<String, Object>();
		return new ModelAndView("create");
	}
	
	
	@PostMapping("/create")
	public ModelAndView save(@ModelAttribute UserModel u) {
		Map<String ,Object> map = new HashMap<String, Object>();
		try {
			u =repo.save(u);
			map.put("users", u);
			map.put("status", "success");
			map.put("message", "Save Successfull");
		} catch (Exception e) {
			map.put("status", "failed");
			map.put("message", "Save Failed");
		}
		
		
		return new ModelAndView("create","data" ,map);
	}
	
	
	@GetMapping("/")
	public ModelAndView userList() {
		Map<String ,Object> map = new HashMap<String, Object>();
		List<UserModel>  users = (List<UserModel>) repo.findAll();
		map.put("users", users);		
		return new ModelAndView("index","data", map );
		
	}
	
	
	
	@GetMapping("/searchUsers")
	public ModelAndView search(@RequestParam (value = "searchUser", required = false)String searchUser) {
		Map<String ,Object> map = new HashMap<String, Object>();
		
		List<UserModel> user = repo.Search(searchUser);
		map.put("users", user);
		return new ModelAndView("index", "data", map);
	}
		
	
}
