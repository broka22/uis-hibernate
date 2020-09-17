package com.vastika.uish.repository;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vastika.uish.model.User;
import com.vastika.uish.util.HibernateUtil;

@Repository
public class UserRepositoryImpl implements UserRepository {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveUser(User user) {
		Session session = HibernateUtil.getSession(sessionFactory);
		session.save(user);
	}

	@Override
	public void updateUser(User user) {
		Session session = HibernateUtil.getSession(sessionFactory);
		session.update(user);
	}

	@Override
	public void deleteUser(int id) {
		User user = getUserById(id);
		if (user != null) {
			Session session = HibernateUtil.getSession(sessionFactory);
			session.delete(user);
		}
	}

	@Override
	public List<User> getAllUser() {
		Session session = HibernateUtil.getSession(sessionFactory);
		Criteria criteria = session.createCriteria(User.class);
		return criteria.list();
	}

	@Override
	public User getUserById(int id) {
		Session session = HibernateUtil.getSession(sessionFactory);
		User user = (User) session.get(User.class, id);
		return user;
	}

}
