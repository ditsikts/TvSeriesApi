package com.ditsikts.tvseries.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
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
	
//	@GetMapping("/tvseries/{id}")
//	public TvSeries getTvSeries(@PathVariable Long id) {
//		TvSeries tvSeries = tvSeriesService.findById(id);
//		if(tvSeries == null) {
//			throw new RuntimeException("TvSeries id not found "+id);
//		}
//		return tvSeries;
//	}
	
	@GetMapping("/tvseries/{search}")
	public List<TvSeries> getTvSeriesByTitle(@PathVariable String search) {
		List<TvSeries> tvSeries = tvSeriesService.findByTitle(search);
		if(tvSeries == null) {
			throw new RuntimeException("TvSeries id not found "+search);
		}
		return tvSeries;
	}
	
	@DeleteMapping("/tvseries/{id}")
	public String deleteTvSeries(@PathVariable Long id) {
		TvSeries tvSeries = tvSeriesService.findById(id);
		if(tvSeries == null) {
			throw new RuntimeException("TvSeries id not found "+id);
		}
		tvSeriesService.deleteById(id);
		return "Deleted TvSeries id - " + id;
	}
	
	@PutMapping("/tvseries")
	public TvSeries updateTvSeries(@RequestBody TvSeries tvSeries) {
		tvSeriesService.save(tvSeries);
		return tvSeries;
	}

	@PostMapping("/tvseries")
	public TvSeries addTvSeries(@RequestBody TvSeries tvSeries) {
		System.out.println(tvSeries);
		tvSeriesService.save(tvSeries);
		return tvSeries;
	}

}
