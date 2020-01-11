package com.ssh.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class BaseDAO {
	private SessionFactory sessionFactory;

	public Session getSession(){
		Session session = sessionFactory.openSession();
		return session;
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
