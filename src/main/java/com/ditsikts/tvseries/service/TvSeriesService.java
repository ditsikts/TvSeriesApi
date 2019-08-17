package com.ditsikts.tvseries.service;

import java.util.List;

import com.ditsikts.tvseries.entity.TvSeries;

public interface TvSeriesService {
	
	public List<TvSeries> findAll();

	public List<TvSeries> findByTitle(String search);
	
	public TvSeries findById(Long id);
	
	public void save(TvSeries tvSeries);
	
	public void deleteById(Long id);
}
