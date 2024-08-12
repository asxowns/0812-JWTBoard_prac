package com.example.demo.dao;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.dto.User;

@Mapper
public interface UserDao {

	User findByUsername(String username);
	
	void insert(User user);
	
	boolean existsByUsername(String username);
	
}
