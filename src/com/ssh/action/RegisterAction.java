package com.ssh.action;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.UserBasicDAO;
import com.ssh.dto.Userbasic;

public class RegisterAction extends ActionSupport {
	
	private String account;
	private String password;
	private UserBasicDAO dao;
	
	public String execute() throws Exception {
		if (dao.register(account, password) == true)
			return SUCCESS;
		else
			return ERROR;
	}

	public UserBasicDAO getDao() {
		return dao;
	}

	public void setDao(UserBasicDAO dao) {
		this.dao = dao;
	}
	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
