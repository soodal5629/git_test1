package com.example.demo.animal.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.example.demo.animal.dto.AnimalDTO;
import com.example.demo.animal.mapper.AnimalMapper;

@Service
public class AnimalServiceImpl implements AnimalService {

	@Autowired
	private AnimalMapper animalMapper;
	
	@Override
	public int animalCount() throws Exception {
	
		return animalMapper.selectAnimalCount();
	}

	@Override
	public List<AnimalDTO> dogList() throws Exception {
		
		return animalMapper.dogList();
	}

	@Override
	public AnimalDTO dogDetail(int animal_idx) throws Exception {
		return animalMapper.dogDetail(animal_idx);
	}

	@Override
	public List<AnimalDTO> catList() throws Exception {
		return animalMapper.catList();
	}


}
