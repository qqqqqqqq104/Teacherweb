package com.ssh.action;

import com.ssh.dao.UserBasicDAO;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{
	private String account;
	private String password;
	private UserBasicDAO dao;
	
	public String execute() throws Exception {
		if(dao.login(account, password)){
			return SUCCESS;
		} else {
			return ERROR;
		}
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

	public UserBasicDAO getDao() {
		return dao;
	}

	public void setDao(UserBasicDAO dao) {
		this.dao = dao;
	}
}