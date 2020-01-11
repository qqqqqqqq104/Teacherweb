package com.ssh.idao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ssh.dao.BaseDAO;
import com.ssh.dao.UserBasicDAO;
import com.ssh.dto.Userbasic;

public class UserBasicDAOImp extends BaseDAO implements UserBasicDAO{
	
	@Override
	public boolean login(String account, String password) {
		Session session = getSession();
		String hql="from Userbasic where account = ? and password = ?";
		Query query  = session.createQuery(hql);
		query.setString(0, account);
		query.setString(1, password);
		//System.out.println(query.list().size());
		if(query.list().size()>0){
			return true;
		}
		session.close();
		return false;
	}
	@Override
	public boolean register(String account,String password) {
	    Session session = getSession();
	    Transaction t=session.beginTransaction();
	    Userbasic u=new Userbasic();
	    u.setAccount(account);
	    u.setPassword(password);
	    session.save(u);
	    t.commit();//提交事务
	    session.close();//关闭会话	
	    return true;
	}
	
}
