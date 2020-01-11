package com.ssh.action;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.PersonDAO;
import com.ssh.dto.Total;

@SuppressWarnings("serial")
public class PersonAction extends ActionSupport {
	private Integer zid;
	private String ztitle;
	private String ztype;
	private String zcontent;
	private PersonDAO dao;
	HttpServletRequest request;
	
	public String addA() throws Exception {
		if(dao.add(ztitle,ztype,zcontent)){
			//ztype=new String(ztype.getBytes("ISO-8859-1"),"UTF-8");
			//ztitle=new String(ztitle.getBytes("ISO-8859-1"),"UTF-8");
			//System.out.println(ztype);
			//System.out.println(ztitle);
			ActionContext.getContext().put("ztype",ztype);
			return SUCCESS;
		} else {
			return ERROR;
		}
	}
	
	public String disExp()throws Exception{
		//System.out.println("1111");
		ztype=new String(ztype.getBytes("ISO-8859-1"),"UTF-8");
		//System.out.println(ztype);
	    List <Total> explist=new ArrayList<Total>();
	    explist=dao.disexp(ztype);
	    //System.out.println(explist.get(0).getZtitle());
	    ActionContext.getContext().put("list", explist);
        return SUCCESS;//这里的result和前台success属性中的result相同，名称应保持一致
	    
	}
	public String updateExp() throws Exception{
		//System.out.println("类型");
		if(dao.update(zid, ztitle, zcontent)){
			ztype=new String(ztype.getBytes("ISO-8859-1"),"UTF-8");
			//System.out.println(ztype);
			ActionContext.getContext().put("ztype",ztype);
			return SUCCESS;
		}
		return ERROR;
	}
	public String deleteExp() throws UnsupportedEncodingException{
		if(dao.delexp(zid)){
			ztype=new String(ztype.getBytes("ISO-8859-1"),"UTF-8");
			//System.out.println(ztype);
			ActionContext.getContext().put("ztype",ztype);
			return SUCCESS;
		} else {
			return ERROR;
		}
	}
	public PersonDAO getDao() {
		return dao;
	}

	public void setDao(PersonDAO dao) {
		this.dao = dao;
	}
	
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
