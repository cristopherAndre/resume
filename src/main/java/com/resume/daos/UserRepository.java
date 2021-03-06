package com.resume.daos;

import org.springframework.data.repository.CrudRepository;

import com.resume.models.User;

public interface UserRepository extends CrudRepository<User, Long> {

	User findById(int id);
	
	User findByMail(String mail);
	
	User findByNickName(String nickName);

}
