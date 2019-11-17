package com.teacher.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Material entity. @author MyEclipse Persistence Tools
 */

public class Material implements java.io.Serializable {

	// Fields

	private Integer mno;
	private String mtitle;
	private String msubject;
	private Set records = new HashSet(0);

	// Constructors

	/** default constructor */
	public Material() {
	}

	/** minimal constructor */
	public Material(String mtitle, String msubject) {
		this.mtitle = mtitle;
		this.msubject = msubject;
	}

	/** full constructor */
	public Material(String mtitle, String msubject, Set records) {
		this.mtitle = mtitle;
		this.msubject = msubject;
		this.records = records;
	}

	// Property accessors

	public Integer getMno() {
		return this.mno;
	}

	public void setMno(Integer mno) {
		this.mno = mno;
	}

	public String getMtitle() {
		return this.mtitle;
	}

	public void setMtitle(String mtitle) {
		this.mtitle = mtitle;
	}

	public String getMsubject() {
		return this.msubject;
	}

	public void setMsubject(String msubject) {
		this.msubject = msubject;
	}

	public Set getRecords() {
		return this.records;
	}

	public void setRecords(Set records) {
		this.records = records;
	}

}