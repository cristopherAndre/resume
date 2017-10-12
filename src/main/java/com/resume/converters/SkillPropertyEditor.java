package com.resume.converters;

import java.beans.PropertyEditorSupport;

import com.resume.daos.SkillRepository;
import com.resume.models.Skill;

public class SkillPropertyEditor extends PropertyEditorSupport {

	private SkillRepository skillRepository;

	public SkillPropertyEditor(SkillRepository skillRepository) {
		this.skillRepository = skillRepository;
	}

	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		Integer id = Integer.valueOf(text);
		Skill skill = skillRepository.findById(id);
		super.setValue(skill);
	}
}
