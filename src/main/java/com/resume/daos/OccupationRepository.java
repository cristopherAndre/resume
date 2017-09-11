package com.resume.daos;

import org.springframework.data.repository.CrudRepository;

import com.resume.models.Occupation;

public interface OccupationRepository extends CrudRepository<Occupation, Long> {

}
