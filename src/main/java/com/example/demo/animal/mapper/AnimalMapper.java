package com.example.demo.animal.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.animal.dto.AnimalDTO;

@Mapper
public interface AnimalMapper {

	int selectAnimalCount() throws Exception;

	List<AnimalDTO> dogList() throws Exception;

	AnimalDTO dogDetail(int animal_idx) throws Exception;

	List<AnimalDTO> catList() throws Exception;

	
}

