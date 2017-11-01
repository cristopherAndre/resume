package com.resume.models;

import java.util.Collection;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

@Entity
@Table(name = "User_Profile")
public class User implements UserDetails {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String nickName;
	private String mail;
	private String password;
	private String firstName;
	private String lastName;
	private String title;
	private String description;
	private String section;
	private String profileImagePath;
	private String aboutMe;
	private String resumeFilePath;

	// START ONE TO ONE RELATIONSHIP
	@OneToOne(mappedBy = "user")
	@JoinColumn(unique = true)
	private Address address;
	// END ONE TO ONE RELATIONSHIP

	// START ONE TO MANY RELATIONSHIP
	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	private List<Skill> skills;

	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	private List<Occupation> occupations;

	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	private List<Education> educations;

	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	private List<SocialMedia> socialMedias;
	// END ONE TO MANY RELATIONSHIP

	// Verificar
	@ManyToMany
	private List<Role> roles;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}

	public String getProfileImagePath() {
		return profileImagePath;
	}

	public void setProfileImagePath(String profileImagePath) {
		this.profileImagePath = profileImagePath;
	}

	public String getAboutMe() {
		return aboutMe;
	}

	public void setAboutMe(String aboutMe) {
		this.aboutMe = aboutMe;
	}

	public String getResumeFilePath() {
		return resumeFilePath;
	}

	public void setResumeFilePath(String resumeFilePath) {
		this.resumeFilePath = resumeFilePath;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return this.roles;
	}

	@Override
	public String getPassword() {
		return this.password;
	}

	@Override
	public String getUsername() {
		return this.firstName;
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public List<Skill> getSkills() {
		return skills;
	}

	public void setSkills(List<Skill> skills) {
		this.skills = skills;
	}

	public List<Occupation> getOccupations() {
		return occupations;
	}

	public void setOccupations(List<Occupation> occupations) {
		this.occupations = occupations;
	}

	public List<Education> getEducations() {
		return educations;
	}

	public void setEducations(List<Education> educations) {
		this.educations = educations;
	}

	public List<SocialMedia> getSocialMedias() {
		return socialMedias;
	}

	public void setSocialMedias(List<SocialMedia> socialMedias) {
		this.socialMedias = socialMedias;
	}

}
