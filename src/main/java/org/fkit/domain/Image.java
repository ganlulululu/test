package org.fkit.domain;

import java.io.Serializable;

public class Image implements Serializable {
	private String fileName;
	private String information;
	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getInformation() {
		return information;
	}

	public void setInformation(String information) {
		this.information = information;
	}
}
