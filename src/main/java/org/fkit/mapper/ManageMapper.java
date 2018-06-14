package org.fkit.mapper;


import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.domain.Manage;

public interface ManageMapper {
	@Select("select * from manage where kind=#{kind}")
	Manage findWithName(@Param("kind")String kind);
	
	
}

