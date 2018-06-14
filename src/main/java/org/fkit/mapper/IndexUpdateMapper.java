package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;


import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.domain.Document;
import org.fkit.domain.Image;
import org.fkit.domain.Nav;

public interface IndexUpdateMapper {
	@Insert("insert into tb_module values(#{name},#{longtitle},#{content},#{image},#{start_date},#{up_date},#{content_id},#{module_id},#{url},#{module_url},#{whole_name},#{title},#{up_year})")
	void addModule(@Param("name")String name,@Param("longtitle")String longtitle,@Param("content")String content,@Param("image")String image,@Param("start_date")String start_date,@Param("up_date")String up_date,@Param("content_id")int content_id,@Param("module_id")String module_id,@Param("whole_name")String whole_name,@Param("title")String title,@Param("up_year")String up_year,@Param("url")String url,@Param("module_url")String module_url);
	@Select("select MAX(content_id) FROM tb_module")
	Integer findInteger();

	@Select("select * FROM tb_image")
	List<Image> findAllImage();
	}
