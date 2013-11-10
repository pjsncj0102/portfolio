package com.emart.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.emart.test.service.EmartService;

@Controller
public class MainController {
	
	@Autowired EmartService emartService;

	@RequestMapping(value={"/", "main"}, method=RequestMethod.GET)
	public String main(){
		return "main";
	}
}
