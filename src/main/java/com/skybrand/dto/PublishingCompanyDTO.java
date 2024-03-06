package com.skybrand.dto;

public class PublishingCompanyDTO extends AbstractDTO<PublishingCompanyDTO>{

	private String name;
	private String thumbnail;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	
}
