package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.fkit.domain.Module;
import org.fkit.domain.Nav;
import org.fkit.domain.ThirdPage;
import org.fkit.domain.WebInfor;
import org.fkit.domain.index;

public interface AllMapper {
	/*@Select("select * from tb_index where name=#{name}")
	List<index> findWithIndexname(@Param("name") String name);*/
	
	@Select("select * from tb_module where longtitle=#{longtitle}")
	Module findPictureWithlongtitle(@Param("longtitle") String longtitle);
	//首页模块内容选择
	@Select("select *, LEFT(up_date,4) as theyear,SUBSTRING(up_date,6,2) as themonth,SUBSTRING(up_date,9,2)as theday from tb_module where  module_id=#{module_id}  ORDER BY LEFT(up_date,4)desc ,SUBSTRING(up_date,6,2) desc ,SUBSTRING(up_date,9,2) desc limit 10 ")
	@Results({
			@Result(column="theyear",property="year"),
			@Result(column="theday",property="date"),
			@Result(column="themonth",property="month")
	})
	List<Module> findIndexContent(@Param("module_id") String module_id);


	//二级页面分页翻页
	@Select("select *, LEFT(up_date,4) as theyear,SUBSTRING(up_date,6,2) as themonth,SUBSTRING(up_date,9,2)as theday from tb_module where module_id=#{module_id} ORDER BY LEFT(up_date,4)desc ,SUBSTRING(up_date,6,2) desc ,SUBSTRING(up_date,9,2) desc limit #{pages},#{pageSize}")
	@Results({
		@Result(column="theyear",property="year"),
		@Result(column="theday",property="date"),
		@Result(column="themonth",property="month")
})
	List<Module> findPage(@Param("pages")int pages,@Param("pageSize")int pageSize,@Param("module_id")String module_id);
	
	@Select("select count(*) from tb_module where module_id=#{module_id}")
	Integer findModuleAll(@Param("module_id")String module_id);
	
	
	@Select("select * from tb_module where module_id=#{module_id}")
	List<Module> findWithModuleId(@Param("module_id")String module_id);
	@Select("select * from tb_module where content_id=#{content_id}")
	Module findWithContentId(@Param("content_id")Integer content_id);
	@Select("select *, count(distinct name)  from tb_module where whole_name=#{whole_name} and name is not NULL group by name ORDER BY(module_id)")
	List<Module> findModuleWithWholeName(@Param("whole_name")String whole_name);

	
	@Select("select * from tb_nav where name=#{name}")
	List<Nav> findWithName(@Param("name")String name);
	@Select("select distinct name from tb_nav")
	List<String> findAllName();
	
	@Select("select * from ThirdPage where module=#{module}")
	ThirdPage findWithModule(@Param("module")String module);
	@Select("select * from ThirdPage where whole_name=#{whole_name}")
	List<ThirdPage> findWithWholeName(@Param("whole_name")String whole_name); 
	
	
	
	//网站信息
	@Select("select * from tb_webInfor")
	WebInfor findWebInfor();
	@Update("update tb_webInfor set online = #{online} , total = #{total} WHERE id=1")
	void updateWebInfor(@Param("online")int online,@Param("total")int total);


}