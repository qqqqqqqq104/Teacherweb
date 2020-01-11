package com.ssh.dao;

import java.util.List;

import com.ssh.dto.Total;

public interface PersonDAO {
	public List<Total> disexp(String type);
	public boolean update(Integer zid,String ztitle,String zcontent);
	public boolean delexp(Integer zid);
	public boolean add(String ztitle,String ztype,String zcontent);
}
