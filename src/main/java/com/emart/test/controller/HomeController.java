package com.emart.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.emart.test.domain.Home;
import com.emart.test.service.HomeService;

@Controller
public class HomeController {

	@Autowired HomeService homeService;
	
	@RequestMapping(value="home", method=RequestMethod.GET)
	public void goEmart(){}
	
	@RequestMapping(value="home/list", method=RequestMethod.GET)
	public String home(ModelMap map){
	List<Home> homeList = homeService.getHome();
		map.put("homeKey", homeList);
	return "jsonView";
	}
	
	@RequestMapping(value="home", method=RequestMethod.POST)
	public String saveHome(Home home,ModelMap map){
		Home homeList = homeService.saveHome(home);
		map.put("homeKey", homeList);
		return "jsonView";
	}
	
	@RequestMapping(value="home/{id}", method=RequestMethod.DELETE)
	public String delete(@PathVariable Long id){
		homeService.deleteHome(id);
		return "jsonView";
	}
}
