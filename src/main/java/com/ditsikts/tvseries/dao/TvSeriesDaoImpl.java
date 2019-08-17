package com.ditsikts.tvseries.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.criterion.MatchMode;
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
	
	@Override
	public List<TvSeries> findByTitle(String search) {
		Session session = entityManager.unwrap(Session.class);
		Query<TvSeries> query = session.createQuery("from TvSeries where lower(title) like lower(:search)", TvSeries.class);
		query.setParameter("search", MatchMode.ANYWHERE.toMatchString(search));
		List<TvSeries> tvSeries = query.getResultList();
		
		return tvSeries;
	}

	@Override
	public TvSeries findById(Long id) {
		
		Session session = entityManager.unwrap(Session.class);
		TvSeries tvSeries = session.get(TvSeries.class, id);
		return tvSeries;
	}

	@Override
	public void save(TvSeries tvSeries) {
		Session session = entityManager.unwrap(Session.class);
		session.saveOrUpdate(tvSeries);
		
	}

	@Override
	public void deleteById(Long id) {
		Session session = entityManager.unwrap(Session.class);
		Query query = session.createQuery("delete from TvSeries where id=:tvSeriesId");
		query.setParameter("tvSeriesId", id);
		query.executeUpdate();
		
	}


}
