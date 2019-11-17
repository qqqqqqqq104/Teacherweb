package com.teacher.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Experience entity. @author MyEclipse Persistence Tools
 */

public class Experience implements java.io.Serializable {

	// Fields

	private Integer eno;
	private String etitle;
	private String esubject;
	private Set records = new HashSet(0);

	// Constructors

	/** default constructor */
	public Experience() {
	}

	/** minimal constructor */
	public Experience(String etitle, String esubject) {
		this.etitle = etitle;
		this.esubject = esubject;
	}

	/** full constructor */
	public Experience(String etitle, String esubject, Set records) {
		this.etitle = etitle;
		this.esubject = esubject;
		this.records = records;
	}

	// Property accessors

	public Integer getEno() {
		return this.eno;
	}

	public void setEno(Integer eno) {
		this.eno = eno;
	}

	public String getEtitle() {
		return this.etitle;
	}

	public void setEtitle(String etitle) {
		this.etitle = etitle;
	}

	public String getEsubject() {
		return this.esubject;
	}

	public void setEsubject(String esubject) {
		this.esubject = esubject;
	}

	public Set getRecords() {
		return this.records;
	}

	public void setRecords(Set records) {
		this.records = records;
	}

}