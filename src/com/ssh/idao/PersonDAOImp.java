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
    	//1.����һ��session����
    	Session session = getSession();
        //2.ͨ��session��createCriteria����һ��Criteria ����
    	Criteria criteria=session.createCriteria(Total.class);
    	//3. Criteria.add ����Լ��(�������������������ﵽ"��"��Ч��),Restrictions.like()�����еĲ���1Ϊ���ݿ���ʵ����ĳ�Ա����������2Ϊɸѡ���ݣ�����3Ϊƥ�䷽ʽ
    	criteria.add(Restrictions.like("ztype",type,MatchMode.EXACT));
        List<Total> list1=criteria.list();
        //System.out.println(33333);
        //System.out.println(list1.get(0).getZtitle());
        //����һ���µ�����Transaction
    	session.beginTransaction();
    	//�ύ���񣬴˴��������������ݿ⽻�������
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
	    t.commit();//�ύ����
	    session.close();//�رջỰ	
		return true;
	}
    public boolean delexp(Integer zid){
		Session session = getSession();
	    Transaction t=session.beginTransaction();
	    Total exp=(Total)session.get(Total.class,zid);
	    session.delete(exp);
	    t.commit();//�ύ����
	    session.close();//�رջỰ	
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
	    t.commit();//�ύ����
	    session.close();//�رջỰ	
		return true;
	}
}
