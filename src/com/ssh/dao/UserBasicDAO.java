package com.ssh.dao;

import com.ssh.dto.Userbasic;

public interface UserBasicDAO {
	public boolean login(String account,String password);
	public boolean register(String account,String password);
}
