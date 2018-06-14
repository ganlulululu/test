package org.fkit.domain;

import java.io.Serializable;

public class Nav implements Serializable{
	private String name;
	private String module_name;
	private String module_url;
	public Nav(){
		super();
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getModule_name() {
		return module_name;
	}
	public void setModule_name(String module_name) {
		this.module_name = module_name;
	}
	public String getModule_url() {
		return module_url;
	}
	public void setModule_url(String module_url) {
		this.module_url = module_url;
	}
	@Override
	public String toString() {
		return "Nav[name=" +name + ",module_name=" +module_name + ","
				+"module_url=" +module_url + "]";
	}

}
