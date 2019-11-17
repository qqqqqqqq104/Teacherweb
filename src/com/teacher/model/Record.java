package com.teacher.model;

import java.util.Date;

/**
 * Record entity. @author MyEclipse Persistence Tools
 */

public class Record implements java.io.Serializable {

	// Fields

	private Integer rno;
	private User user;
	private Experience experience;
	private Material material;
	private Date rtime;
	private String download;

	// Constructors

	/** default constructor */
	public Record() {
	}

	/** minimal constructor */
	public Record(User user, Date rtime) {
		this.user = user;
		this.rtime = rtime;
	}

	/** full constructor */
	public Record(User user, Experience experience, Material material, Date rtime, String download) {
		this.user = user;
		this.experience = experience;
		this.material = material;
		this.rtime = rtime;
		this.download = download;
	}

	// Property accessors

	public Integer getRno() {
		return this.rno;
	}

	public void setRno(Integer rno) {
		this.rno = rno;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Experience getExperience() {
		return this.experience;
	}

	public void setExperience(Experience experience) {
		this.experience = experience;
	}

	public Material getMaterial() {
		return this.material;
	}

	public void setMaterial(Material material) {
		this.material = material;
	}

	public Date getRtime() {
		return this.rtime;
	}

	public void setRtime(Date rtime) {
		this.rtime = rtime;
	}

	public String getDownload() {
		return this.download;
	}

	public void setDownload(String download) {
		this.download = download;
	}

}