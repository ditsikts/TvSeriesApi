package com.ditsikts.tvseries.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ditsikts.tvseries.dao.TvSeriesDao;
import com.ditsikts.tvseries.entity.TvSeries;

@Service
public class TvSeriesServiceImpl implements TvSeriesService {

	private TvSeriesDao tvSeriesDao;
	
	@Autowired
	public TvSeriesServiceImpl(TvSeriesDao tvSeriesDao) {
		this.tvSeriesDao = tvSeriesDao;
	}
	
	@Override
	@Transactional
	public List<TvSeries> findAll() {
		return tvSeriesDao.findAll();
	}

	@Override
	@Transactional
	public TvSeries findById(Long id) {

		return tvSeriesDao.findById(id);
	}

	@Override
	@Transactional
	public void save(TvSeries tvSeries) {
		tvSeriesDao.save(tvSeries);
		
	}

	@Override
	@Transactional
	public void deleteById(Long id) {
		tvSeriesDao.deleteById(id);
		
	}

}
