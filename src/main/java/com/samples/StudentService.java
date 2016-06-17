package com.samples;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class StudentService {
   
	@Autowired
	private StudentDao studentDao;
	public void save(Student student){
		studentDao.save(student);
	}
}
