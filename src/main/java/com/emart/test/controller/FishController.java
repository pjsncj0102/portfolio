package com.emart.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.emart.test.domain.Fish;
import com.emart.test.service.FishService;

@Controller
public class FishController {

	@Autowired private FishService fishService;
	
	@RequestMapping(value="fish/list", method=RequestMethod.GET)
	public String getList(ModelMap map){
		List<Fish> fishList = fishService.getFish();
		map.put("fishKey", fishList);
		return "jsonView";
	}
	
	@RequestMapping(value="fish", method=RequestMethod.GET)
	public void goHome(){}
	
	@RequestMapping(value="fish", method=RequestMethod.POST)
	public String saveFish(Fish fish, ModelMap map){
		Fish fishList = fishService.saveFish(fish);
		map.put("fishKey", fishList);
		return "jsonView";
	}
	
	@RequestMapping(value="fish/{id}", method=RequestMethod.DELETE)
	public String delete(@PathVariable Long id){
		fishService.deleteFish(id);
		return "jsonView";
	}
}
