package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.domain.Nav;

public interface NavMapper {
	@Select("select * from tb_nav where name=#{name}")
	List<Nav> findWithName(@Param("name")String name);
	@Select("select name from tb_nav")
	List<Nav> findAllName();

}
