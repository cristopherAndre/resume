package com.resume.daos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.resume.models.Role;

public interface RoleRepository extends CrudRepository<Role, Long> {

	Role findByCode(String code);

	List<Role> findByDescription(String description);

}
