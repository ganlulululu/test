package org.fkit.domain;

import java.io.Serializable;

public class images implements Serializable{
	private String imageId;
	private String src;
	private String alt;
	private index index;
	
	public String getSrc() {
		return src;
	}
	public void setSrc(String src) {
		this.src = src;
	}
	public String getAlt() {
		return alt;
	}
	public void setAlt(String alt) {
		this.alt = alt;
	}
	public index getIndex() {
		return index;
	}
	public void setIndex(index index) {
		this.index = index;
	}
	public String getImageId() {
		return imageId;
	}
	public void setImageId(String imageId) {
		this.imageId = imageId;
	}
	

}
