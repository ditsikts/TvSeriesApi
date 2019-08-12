package com.ditsikts.tvseries.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ditsikts.tvseries.entity.Category;

@Repository
public class CategoryDaoImpl implements CategoryDao {

	private EntityManager entityManager;
	
	@Autowired
	public CategoryDaoImpl(EntityManager entityManager) {
		this.entityManager = entityManager;
	}
	
	@Override
	public List<Category> findAll() {
		
		Session session = entityManager.unwrap(Session.class);
		Query<Category> query = session.createQuery("from Category", Category.class);
		
		List<Category> categories = query.getResultList();

		return categories;
		
	}

	@Override
	public Category findById(Long id) {

		Session session = entityManager.unwrap(Session.class);
		Category category = session.get(Category.class, id);
		return category;
	}

	@Override
	public void save(Category category) {
		Session session = entityManager.unwrap(Session.class);
		session.saveOrUpdate(category);
	}

	@Override
	public void deleteById(Long id) {
		Session session = entityManager.unwrap(Session.class);
		Query query = session.createQuery("delete from Category where id=:categoryId");
		query.setParameter("categoryId", id);
		query.executeUpdate();
		
	}

}
