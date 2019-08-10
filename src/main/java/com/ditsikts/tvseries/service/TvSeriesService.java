package com.ditsikts.tvseries.service;

import java.util.List;

import com.ditsikts.tvseries.entity.TvSeries;

public interface TvSeriesService {
	
	public List<TvSeries> findAll();

	public TvSeries findById(int id);
	
	public void save(TvSeries tvSeries);
	
	public void deleteById(int id);
}
