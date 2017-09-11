package com.resume.models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;

@Entity
@Table(name="role_resume")
public class Role implements GrantedAuthority {

	private static final long serialVersionUID = 1L;

	@Id
	private String code;
	private String description;

	public Role() {
	}

	public Role(String code) {
		this.code = code;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String getAuthority() {
		return this.code;
	}

}
