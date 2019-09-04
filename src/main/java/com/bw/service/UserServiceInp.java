package com.bw.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bw.entity.User;
import com.bw.mapper.UserDao;

@Service
public class UserServiceInp implements UserService{

	@Resource
	private UserDao dao;

	public List<User> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	public Integer delete(String[] uid) {
		// TODO Auto-generated method stub
		return dao.delete(uid);
	}

	public Integer save(User user) {
		// TODO Auto-generated method stub
		return dao.save(user);
	}
	
}
