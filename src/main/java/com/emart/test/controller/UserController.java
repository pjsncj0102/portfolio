package com.emart.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.emart.test.domain.User;
import com.emart.test.service.UserService;

@Controller
public class UserController {

	@Autowired private UserService userService;
	
	@RequestMapping(value="user", method=RequestMethod.GET)
	public void jonin(){}
	
	@RequestMapping(value="users", method=RequestMethod.GET)
	public String join(ModelMap map){
		List<User> joinList = userService.getJoin();
		map.put("joinKey", joinList);
		return "jsonView";
	}
	
	@RequestMapping(value="users", method=RequestMethod.POST)
	public String sendJoin(User user){
		userService.registUser(user);
		return "jsonView";
	}
}
