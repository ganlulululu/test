package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.domain.index;


public interface IndexMapper {
	@Select("select * from tb_index where name=#{name}")
	List<index> findWithname(@Param("name") String name);
	@Select("select image_src from tb_index where name=#{name}")
	index findPictureWithname(@Param("name") String name);
}
