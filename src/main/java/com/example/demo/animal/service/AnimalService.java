package com.example.demo.animal.service;

import java.util.List;

import com.example.demo.animal.dto.AnimalDTO;

public interface AnimalService {

	int animalCount() throws Exception;

	List<AnimalDTO> dogList() throws Exception;

	AnimalDTO dogDetail(int animal_idx) throws Exception;

	Object catList() throws Exception;

	
}
