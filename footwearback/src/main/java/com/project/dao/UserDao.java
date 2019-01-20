package com.project.dao;

import java.util.List;

import com.project.model.User;

public interface UserDao {
	void insertUser(User user);
	List<User> userList();
	User get(String userEmail);
}