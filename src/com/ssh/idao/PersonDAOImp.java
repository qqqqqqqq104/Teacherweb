package com.ssh.idao;


import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

import com.ssh.dao.BaseDAO;
import com.ssh.dao.PersonDAO;
import com.ssh.dto.Total;

public class PersonDAOImp extends BaseDAO implements PersonDAO{
    public List<Total> disexp(String type){
    	//1.创建一个session对象
    	Session session = getSession();
        //2.通过session的createCriteria创建一个Criteria 对象
    	Criteria criteria=session.createCriteria(Total.class);
    	//3. Criteria.add 增加约束(连续加入两个条件，达到"与"的效果),Restrictions.like()方法中的参数1为数据库表的实体类的成员变量，参数2为筛选内容，参数3为匹配方式
    	criteria.add(Restrictions.like("ztype",type,MatchMode.EXACT));
        List<Total> list1=criteria.list();
        //System.out.println(33333);
        //System.out.println(list1.get(0).getZtitle());
        //开启一个新的事务Transaction
    	session.beginTransaction();
    	//提交事务，此处才是真正与数据库交互的语句
    	session.getTransaction().commit();
    	session.close();
        return list1;
    }
    
    public boolean update(Integer zid,String ztitle,String zcontent){
		Session session = getSession();
	    Transaction t=session.beginTransaction();
	    Total exp=(Total)session.get(Total.class,zid);
	    exp.setZtitle(ztitle);
	    exp.setZcontent(zcontent);
	    t.commit();//提交事务
	    session.close();//关闭会话	
		return true;
	}
    public boolean delexp(Integer zid){
		Session session = getSession();
	    Transaction t=session.beginTransaction();
	    Total exp=(Total)session.get(Total.class,zid);
	    session.delete(exp);
	    t.commit();//提交事务
	    session.close();//关闭会话	
		return true;
	}
    public boolean add(String ztitle,String ztype,String zcontent){
		Session session = getSession();
	    Transaction t=session.beginTransaction();
	    Total u=new Total();
	    u.setZtitle(ztitle);
	    u.setZcontent(zcontent);
	    u.setZtype(ztype);
	    session.save(u);
	    t.commit();//提交事务
	    session.close();//关闭会话	
		return true;
	}
}
