package com.vastika.uish.service;

import java.util.List;

import com.vastika.uish.model.User;

public interface UserService {
	
	void saveUser(User user);

	void updateUser(User user);

	void deleteUser(int id);

	List<User> getAllUser();

	User getUserById(int id);

}
