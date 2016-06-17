package com.samples;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ChairService {
    @Autowired
	private ChairDao chairDao;
    
    public void saveChair(Chair chair){
    	chairDao.saveChair(chair);
    }
    
    public int editChair(Chair chair){
    	return chairDao.editChair(chair);
    }
    public List getAllChairs(){
    	return chairDao.getAllChairs();
    }
    public Chair getChairById(int id){
    	return chairDao.getChairById(id);
    }
}
