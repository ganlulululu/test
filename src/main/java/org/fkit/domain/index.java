package org.fkit.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class index implements Serializable{
	
		private Integer id;
		private String module_id;
		private String title;
		private String startDate;
		private String up_date;
		private String content;
		private String url;
		private String content_url;
		private String content_id;
	    private String name;
	    private String longtitle;
	    private String image;
	    
		
	    public index() {
			super();}
		
	    public String getModule_id() {
			return module_id;
		}

		public void setModule_id(String module_id) {
			this.module_id = module_id;
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
		public String getStartDate() {
			return startDate;
		}
		public void setStartDate(String startDate) {
			this.startDate = startDate;
		}
	
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
		}
		
		public String getUrl() {
			return url;
		}
		public void setUrl(String url) {
			this.url = url;
		}
		
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getUp_date() {
			return up_date;
		}

		public void setUp_date(String up_date) {
			this.up_date = up_date;
		}
		
	

		public void setLongtitle(String longtitle) {
			this.longtitle = longtitle;
		}


	
		public String getContent_id() {
			return content_id;
		}

		public void setContent_id(String content_id) {
			this.content_id = content_id;
		}

		

		@Override
		public String toString() {
			return "index [id=" + id + ", title=" + title + ", startDate="
					+startDate + ", up_date=" + up_date + ", content=" + content + ",url=" + url + ","
							+ "name=" + name + ",image=" + image + ",longtitle="+longtitle+"]";
		}

		public String getContent_url() {
			return content_url;
		}

		public void setContent_url(String content_url) {
			this.content_url = content_url;
		}

		public String getImage() {
			return image;
		}

		public void setImage(String image) {
			this.image = image;
		}



	
	}


