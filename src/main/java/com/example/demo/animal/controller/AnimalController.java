package com.example.demo.animal.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.animal.dto.AnimalDTO;
import com.example.demo.animal.service.AnimalService;


@Controller
public class AnimalController {

	@Autowired
	private AnimalService animalService;
	
	@RequestMapping(value="/")
	public ModelAndView home() throws Exception {
		System.out.println("animalController �۵�..");
		int count = animalService.animalCount();
		ModelAndView mvn = new ModelAndView();
		mvn.setViewName("home");
		mvn.addObject("count", count);
		
		return mvn;
	} //���� Ȩ������
	
	@RequestMapping(value="/dogList.do")
	public ModelAndView dogList() throws Exception {
		System.out.println("dogListController �۵�..");
		ModelAndView mvn = new ModelAndView();
		mvn.setViewName("dogList");
		mvn.addObject("dogList", animalService.dogList());
		
		return mvn;
	} //�� ��� ������

	@RequestMapping(value="/catList.do")
	public ModelAndView catList() throws Exception {
		System.out.println("catListController �۵�..");
		ModelAndView mvn = new ModelAndView();
		mvn.setViewName("catList");
		mvn.addObject("catList", animalService.catList());
		return mvn;
	} //�� ��� ������

	
	
	@RequestMapping(value="detail.do/{animal_idx}")
	public ModelAndView dogDetail(@PathVariable int animal_idx) throws Exception {
		System.out.println("dogDetailController �۵�..");
		ModelAndView mvn = new ModelAndView();
		
		AnimalDTO dto = animalService.dogDetail(animal_idx);
		
		mvn.setViewName("detail");
		mvn.addObject("detail", dto);
		
		return mvn;
	} //�� ������
	
}
