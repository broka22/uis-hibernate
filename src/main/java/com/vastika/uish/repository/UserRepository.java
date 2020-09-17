package com.vastika.uish.repository;

import java.util.List;

import com.vastika.uish.model.User;

public interface UserRepository {
	
	void saveUser(User user);

	void updateUser(User user);

	void deleteUser(int id);

	List<User> getAllUser();

	User getUserById(int id);

}
