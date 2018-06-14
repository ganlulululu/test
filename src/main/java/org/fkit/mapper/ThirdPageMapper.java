package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.domain.ThirdPage;

public interface ThirdPageMapper {
	@Select("select * from ThirdPage where module=#{module}")
	ThirdPage findWithModule(@Param("module")String module);
	@Select("select * from ThirdPage where whole_name=#{whole_name}")
	List<ThirdPage> findWithWholeName(@Param("whole_name")String whole_name); 
}
