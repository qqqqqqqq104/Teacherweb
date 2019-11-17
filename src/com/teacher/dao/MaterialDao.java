package com.teacher.dao;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.teacher.model.Material;

@Service @Transactional
public class MaterialDao {
	
	@Resource SessionFactory factory;
	
	//添加
	public void AddMaterial(Material material){
		Session s= factory.getCurrentSession();
		s.save(material);
	}
	//删除
	public void DeleteMaterial(Integer mno){
		Session s = factory.getCurrentSession();
		Object material = s.load(Material.class,mno);
		s.delete(material);
	}
	//改
	public void UpdateMaterial(Material material){
		Session s = factory.getCurrentSession();
		s.update(material);
	}
	//查询所有资料的信息
	public ArrayList<Material> QueryAllMaterial(){
		Session s = factory.getCurrentSession();
		String hq1 = "From Material";
		Query q = s.createQuery(hq1);
		List materialList = q.list();
		return (ArrayList<Material>) materialList;
	}
	//根据主键获取对象
	public Material GetMaterialId(Integer mno){
		Session s = factory.getCurrentSession();
		Material material = (Material)s.get(Material.class,mno);
		return material;
	}
	//根据查询条件查询
	public ArrayList<Material> QueryMaterialInfo(String mtitle){
		Session s = factory.getCurrentSession();
		String hql = "From Material material where 1=1";
		if(!mtitle.equals("")) 
			hql=hql+"and material.mtitle like '%"+mtitle+"%'";
		Query q = s.createQuery(hql);
		List materialList = q.list();
		return (ArrayList<Material>) materialList;
	}

}
