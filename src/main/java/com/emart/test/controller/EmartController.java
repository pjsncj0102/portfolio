package com.emart.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import com.emart.test.domain.rest.EmartNews;
import com.emart.test.service.EmartService;

@Controller
public class EmartController {
	
	@Autowired private EmartService emartService;
	@Autowired protected RestTemplate restTemplate;

	@RequestMapping(value = "emart", method = RequestMethod.GET)
	public void home() {
	}
	
	@RequestMapping(value = "emarts/news", method = RequestMethod.GET)
	public String emartNews(ModelMap map) {
		EmartNews news = restTemplate.getForObject("http://apis.daum.net/search/web?q=이마트&apikey=DAUM_SEARCH_DEMO_APIKEY&output=json", EmartNews.class);
		map.put("news", news);
		return "jsonView";
	}

	@RequestMapping(value="emarts/search", method=RequestMethod.GET)
	public String searchItem(String searchItem, ModelMap map){
		List<Object> result = emartService.searchEmartItems(searchItem);
		map.put("itemKey", result);
		return "jsonView";
	}
}