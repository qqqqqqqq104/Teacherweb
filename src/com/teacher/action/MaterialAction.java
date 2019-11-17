package com.teacher.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.teacher.dao.MaterialDao;
import com.teacher.model.Material;
import com.opensymphony.xwork2.ActionSupport;

@Controller @Scope("prototype")
public class MaterialAction extends ActionSupport {
	
	@Resource MaterialDao materialDao;
	
	private Material material;
	private List<Material> materialList;
	
	public Material getMaterial(){
		return material;
	}
	public void setMaterial(Material material){
		this.material=material;
	}
	public List<Material> getMaterialList(){
		return materialList;
	}
	public void setMaterialList(List<Material> materialList){
		this.materialList = materialList;
	}
	public String addMaterial(){
		materialDao.AddMaterial(material);
		return "message";
	}
	public String showMaterial(){
		materialDao.QueryAllMaterial();
		return "show_view";
	}
}