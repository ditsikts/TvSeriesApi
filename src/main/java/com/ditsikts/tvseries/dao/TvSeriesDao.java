package com.ditsikts.tvseries.dao;

import java.util.List;

import com.ditsikts.tvseries.entity.TvSeries;

public interface TvSeriesDao {

	public List<TvSeries> findAll();
}
