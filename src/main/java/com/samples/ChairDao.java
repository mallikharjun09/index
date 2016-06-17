package com.samples;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ChairDao {

	@Autowired
    private SessionFactory sf;
	
	public SessionFactory getSf() {
		Session session=sf.openSession();
		Transaction tx=session.beginTransaction();
		
		return sf;
	}
	
	public void setSf(SessionFactory sf) {
		Session session=sf.openSession();
		Transaction tx=session.beginTransaction();
		
		this.sf = sf;
	}
	
	public void saveChair(Chair chair){
		Session session=sf.openSession();
		Transaction tx=session.beginTransaction();
		
		session.persist(chair);
		tx.commit();
		session.close();
	}
	public int editChair(Chair chair){
		Session session=sf.openSession();
		Transaction tx=session.beginTransaction();
		
		session.saveOrUpdate(chair);
		tx.commit();
		Serializable id=session.getIdentifier(chair);
		session.flush();
		session.close();
		return (Integer)id;
	}
	
	public Chair getChairById(int id){
		Session session=sf.openSession();
		Chair p=(Chair)session.load(Chair.class, id);		
		return p;
	}
	public List getAllChairs(){
		Session session=sf.openSession();
		Transaction tx=session.beginTransaction();
		
	  List<Chair> chlist=session.createQuery("from Chair").list();
	  session.close();
	  return chlist;
	}

}

