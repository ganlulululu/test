package org.fkit.domain;

import java.io.Serializable;

public class ThirdPage implements Serializable{
	private String module;
	private String content;
	private String whole_name;
	private String name;
	private String url;
	public ThirdPage() {
		super();}
	public String getModule() {
		return module;
	}
	public void setModule(String module) {
		this.module = module;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWhole_name() {
		return whole_name;
	}
	public void setWhole_name(String whole_name) {
		this.whole_name = whole_name;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	@Override
	public String toString() {
		return "ThirdPage[url=" + url + ",module=" + module + ",content=" + content+ ",name=" + name + ",whole_name=" + whole_name + "]";
	}
	
}
