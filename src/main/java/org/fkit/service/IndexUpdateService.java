package org.fkit.service;

import java.util.List;

import org.fkit.domain.Document;
import org.fkit.domain.Image;


public interface IndexUpdateService {
  void addModule(String name,String longtitle,String content,String image,String start_date,String up_date,int content_id,String module_id,String whole_name,String title,String up_year,String url,String module_url);
  	Integer getNumber();
  	List<Image> getAllImage();
}

