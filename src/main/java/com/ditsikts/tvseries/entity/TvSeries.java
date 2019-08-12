package com.ditsikts.tvseries.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

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
	
    @NotEmpty
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "tvseries_category",
            joinColumns = {
                @JoinColumn(name = "tv_series_id")},
            inverseJoinColumns = {
                @JoinColumn(name = "category_id")})
    private List<Category> categories;
	
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

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	@Override
	public String toString() {
		return "TvSeries [id=" + id + ", title=" + title + ", category=" + category + ", imageUrl=" + imageUrl + "]";
	}
	
	
	
	
}
