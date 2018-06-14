package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.domain.Module;
import org.fkit.domain.ThirdPage;

public interface ModuleMapper {
	@Select("select * from tb_module where module_id=#{module_id} and page=#{page}")
	List<Module> findWithPage(@Param("module_id")String module_id,@Param("page")String page);
	@Select("select * from tb_module where module_id=#{module_id}")
	List<Module> findWithModuleId(@Param("module_id")String module_id);
	@Select("select * from tb_module where content_id=#{content_id}")
	Module findWithContentId(@Param("content_id")Integer content_id);
	@Select("select * from ThirdPage where whole_name=#{whole_name}")
	List<Module> findModuleWithWholeName(@Param("whole_name")String whole_name);
}
