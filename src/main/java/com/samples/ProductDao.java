package com.samples;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ProductDao {

	@Autowired
    private SessionFactory sf;
	
	public SessionFactory getSf() {
		return sf;
	}

	public void setSf(SessionFactory sf) {
		this.sf = sf;
	}
	
	public void saveChair(Student student){
		Session session=this.sf.openSession();
		Transaction tx=session.beginTransaction();
		session.persist(student);
		tx.commit();
		session.close();
	}

}

