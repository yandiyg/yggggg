package com.bw.service;

import java.util.List;

import com.bw.entity.User;

public interface UserService {

	public List<User> findAll();
	
	public Integer delete(String[] uid);
	
	public Integer save(User user);
	
}
