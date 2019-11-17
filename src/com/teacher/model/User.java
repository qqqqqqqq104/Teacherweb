package com.teacher.model;

import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private String name;
	private String passwd;
	private Set records = new HashSet(0);

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String passwd) {
		this.passwd = passwd;
	}

	/** full constructor */
	public User(String passwd, Set records) {
		this.passwd = passwd;
		this.records = records;
	}

	// Property accessors

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPasswd() {
		return this.passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public Set getRecords() {
		return this.records;
	}

	public void setRecords(Set records) {
		this.records = records;
	}

}