package com.resume.daos;

import org.springframework.data.repository.CrudRepository;

import com.resume.models.Skill;

public interface SkillRepository extends CrudRepository<Skill, Long> {

}
