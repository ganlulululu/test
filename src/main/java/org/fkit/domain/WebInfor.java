package org.fkit.domain;

import java.io.Serializable;

public class WebInfor implements Serializable{
	private Integer online;
	private Integer total;

	public WebInfor(){
		super();
	}
	public Integer getOnline() {
		return online;
	}
	public void setOnline(Integer online) {
		this.online = online;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}

	@Override
	public String toString() {
		return "WebInfor [online=" + online + ",total="+ total +"]";
	}

}
