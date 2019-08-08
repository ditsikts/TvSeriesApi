package com.ditsikts.tvseries.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ditsikts.tvseries.entity.TvSeries;

@Repository
public class TvSeriesDaoImpl implements TvSeriesDao {

	private EntityManager entityManager;
	
	@Autowired
	public TvSeriesDaoImpl(EntityManager entityManager) {
		this.entityManager = entityManager;
	}
	
	@Override
	public List<TvSeries> findAll() {
		
		Session session = entityManager.unwrap(Session.class);
		Query<TvSeries> query = session.createQuery("from TvSeries", TvSeries.class);
		
		List<TvSeries> tvSeries = query.getResultList();
		
		return tvSeries;
		
	}

}
