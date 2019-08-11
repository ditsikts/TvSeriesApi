package com.ditsikts.tvseries.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="tv_series")
public class TvSeries {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="tv_series_id")
	private Long id;
	
	@Column(name="title")
	private String title;
	
	@Column(name="category")
	private String category;

	@Column(name="status")
	private String status;
	
	@Column(name="image_url")
	private String imageUrl;
	
	@OneToMany(mappedBy = "tvSeries")
    private List<Season> seasons;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	
	public List<Season> getSeasons() {
		return seasons;
	}

	public void setSeasons(List<Season> seasons) {
		this.seasons = seasons;
	}

	@Override
	public String toString() {
		return "TvSeries [id=" + id + ", title=" + title + ", category=" + category + ", imageUrl=" + imageUrl + "]";
	}
	
	
	
	
}
