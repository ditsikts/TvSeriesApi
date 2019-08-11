package com.ditsikts.tvseries.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "seasons")
public class Season {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "season_id")
	private Long id;

	@Column(name = "season_number")
	private String seasonNumber;

	@Column(name = "date_aired")
	private LocalDate dateAired;

	@Column(name = "episodes")
	private Integer episodes;

	@ManyToOne(optional = false)
	@JoinColumn(name = "tv_series_id")
	private TvSeries tvSeries;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSeasonNumber() {
		return seasonNumber;
	}

	public void setSeasonNumber(String seasonNumber) {
		this.seasonNumber = seasonNumber;
	}

	public LocalDate getDateAired() {
		return dateAired;
	}

	public void setDateAired(LocalDate dateAired) {
		this.dateAired = dateAired;
	}

	public Integer getEpisodes() {
		return episodes;
	}

	public void setEpisodes(Integer episodes) {
		this.episodes = episodes;
	}

	@JsonIgnore
	public TvSeries getTvSeries() {
		return tvSeries;
	}

	public void setTvSeries(TvSeries tvSeries) {
		this.tvSeries = tvSeries;
	}
	
	

}
