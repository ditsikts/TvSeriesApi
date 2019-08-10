package com.ditsikts.tvseries.dao;

import java.util.List;

import com.ditsikts.tvseries.entity.TvSeries;

public interface TvSeriesDao {

	public List<TvSeries> findAll();
	
	public TvSeries findById(int id);
	
	public void save(TvSeries tvSeries);
	
	public void deleteById(int id);
}
