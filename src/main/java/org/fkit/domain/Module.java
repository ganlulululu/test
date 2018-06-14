package org.fkit.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Module implements Serializable{
	private String module_id;
	private int id;
	private Integer content_id;
	private String name;
	private String title;
	private String longtitle;
	private String startDate;
	private Date up_date;
	private String start_date;
	private String date;
	private String year;
	private String month;
	private String content;
	private String image;
	private String url;
	private String module_url;
	private String page;
    private MultipartFile images;
    private String whole_name;
    private Integer pages;
    private Integer pageSize;
    private MultipartFile Document;
    

    
	
    public Module() {
		super();}
    public String getModule_id() {
		return module_id;
	}
	public void setModule_id(String module_id) {
		this.module_id = module_id;
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
	public Date getUp_date() {
		return up_date;
	}

	public void setUp_date(Date up_date) {
		this.up_date = up_date;
	}
	
	public String getImage() {
		return image;
	}

	public void setImages(String image) {
		this.image = image;
	}
	public String getLongtitle() {
		return longtitle;
	}

	public void setLongtitle(String longtitle) {
		this.longtitle = longtitle;
	}



	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	public Integer getContent_id() {
		return content_id;
	}
	public void setContent_id(Integer content_id) {
		this.content_id = content_id;
	}
	public String getModule_url() {
		return module_url;
	}
	public void setModule_url(String module_url) {
		this.module_url = module_url;
	}
	public MultipartFile getImages() {
		return images;
	}
	public void setImages(MultipartFile images) {
		this.images = images;
	}
	public String getWhole_name() {
		return whole_name;
	}
	public void setWhole_name(String whole_name) {
		this.whole_name = whole_name;
	}


	@Override
	public String toString() {
		return "Module[module_id=" + module_id + ",content_id=" + content_id + ", title=" + title + ", startDate="
				+startDate + ", up_date=" + up_date + ", content=" + content + ",url=" + url + ",module_url=" + module_url + ","
						+ "name=" + name + ",whole_name=" + whole_name + ",images=" + images + ",longtitle="+longtitle+",page=" +page + ",image=" + image + "]";
	


}
	public Integer getPages() {
		return pages;
	}
	public void setPages(Integer pages) {
		this.pages = pages;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public MultipartFile getDocument() {
		return Document;
	}
	public void setDocument(MultipartFile document) {
		Document = document;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}

	


}
