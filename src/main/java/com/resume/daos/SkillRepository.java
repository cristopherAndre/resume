package com.resume.daos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.resume.models.Skill;

public interface SkillRepository extends CrudRepository<Skill, Long> {

	Skill findById(int id);
	
	List<Skill> findByUser_id(int id);

}
