package com.emart.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.emart.test.domain.Meat;
import com.emart.test.service.MeatService;

@Controller
public class MeatController {
	
	@Autowired MeatService meatService;

	@RequestMapping(value="meat", method=RequestMethod.GET)
	public void goEmart(){}
	
	@RequestMapping(value="meat/list", method=RequestMethod.GET)
	public String getList(ModelMap map){
		List<Meat> meatList = meatService.getMeat();
		map.put("meatKey", meatList);
		return "jsonView";
	}
	
	@RequestMapping(value="meat", method=RequestMethod.POST)
	public String saveMeat(Meat meat,ModelMap map){
		Meat meatList = meatService.saveMeat(meat);
		map.put("meatKey", meatList);
		return "jsonView";
	}
	
	@RequestMapping(value="meat/{id}", method=RequestMethod.DELETE)
	public String delete(@PathVariable Long id){
		meatService.deleteMeat(id);
		return "jsonView";
	}
	
}
