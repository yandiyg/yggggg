package com.bw.mapper;

import java.util.List;

import com.bw.entity.User;

public interface UserDao {

	public List<User> findAll();
	
	public Integer delete(String[] uid);
	
	public Integer save(User user);
	
}
