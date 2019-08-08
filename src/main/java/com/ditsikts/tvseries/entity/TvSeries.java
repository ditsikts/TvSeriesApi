package com.ditsikts.tvseries.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tv_series")
public class TvSeries {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="tv_series_id")
	private Integer id;
	
	@Column(name="title")
	private String title;
	
	@Column(name="category")
	private String category;
	
	@Column(name="image_url")
	private String imageUrl;
	
	public TvSeries() {
		super();
	}

	public TvSeries(Integer id, String title, String category, String imageUrl) {
		super();
		this.id = id;
		this.title = title;
		this.category = category;
		this.imageUrl = imageUrl;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	@Override
	public String toString() {
		return "TvSeries [id=" + id + ", title=" + title + ", category=" + category + ", imageUrl=" + imageUrl + "]";
	}
	
	
	
	
}
