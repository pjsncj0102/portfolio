package com.emart.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.emart.test.domain.Fruit;
import com.emart.test.service.FruitService;

@Controller
public class FruitController {

	@Autowired FruitService fruitService;
	
	@RequestMapping(value="fruit", method=RequestMethod.GET)
	public void goEmart(){}
	
 	@RequestMapping(value="fruit/list", method=RequestMethod.GET)
	public String fruit(ModelMap map){
		List<Fruit> fruitList = fruitService.getFruit();
		map.put("fruitKey", fruitList);
		return "jsonView";
	}
 	
 	@RequestMapping(value="fruit", method=RequestMethod.POST)
 	public String saveFruit(Fruit fruit,ModelMap map){
 		Fruit fruitList = fruitService.saveFruit(fruit);
 		map.put("fruitKey", fruitList);
 		return "jsonView";
 	}
 	
 	@RequestMapping(value="fruit/{id}", method=RequestMethod.DELETE)
 	public String delete(@PathVariable Long id){
 		fruitService.deleteFruit(id);
 		return "jsonView";
 	}
}

