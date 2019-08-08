package com.ditsikts.tvseries.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ditsikts.tvseries.entity.TvSeries;
import com.ditsikts.tvseries.service.TvSeriesService;

@RestController
@RequestMapping("/api")
public class TvSeriesRestController {
	
	private TvSeriesService tvSeriesService;
	
	@Autowired
	public TvSeriesRestController(TvSeriesService tvSeriesService) {
		this.tvSeriesService = tvSeriesService;
		
	}
	
	@GetMapping("/tvseries")
	public List<TvSeries> findAll(){
		return tvSeriesService.findAll();
	}

}
