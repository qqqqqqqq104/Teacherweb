package com.ssh.dto;

/**
 * Total entity. @author MyEclipse Persistence Tools
 */

public class Total implements java.io.Serializable {

	// Fields

	private Integer zid;
	private String ztitle;
	private String ztype;
	private String zcontent;

	// Constructors

	/** default constructor */
	public Total() {
	}

	/** full constructor */
	public Total(String ztitle, String ztype, String zcontent) {
		this.ztitle = ztitle;
		this.ztype = ztype;
		this.zcontent = zcontent;
	}

	// Property accessors

	public Integer getZid() {
		return this.zid;
	}

	public void setZid(Integer zid) {
		this.zid = zid;
	}

	public String getZtitle() {
		return this.ztitle;
	}

	public void setZtitle(String ztitle) {
		this.ztitle = ztitle;
	}

	public String getZtype() {
		return this.ztype;
	}

	public void setZtype(String ztype) {
		this.ztype = ztype;
	}

	public String getZcontent() {
		return this.zcontent;
	}

	public void setZcontent(String zcontent) {
		this.zcontent = zcontent;
	}

}