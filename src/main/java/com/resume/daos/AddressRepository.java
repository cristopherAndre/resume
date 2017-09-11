package com.resume.daos;

import org.springframework.data.repository.CrudRepository;

import com.resume.models.Address;

public interface AddressRepository extends CrudRepository<Address, Long> {

}
