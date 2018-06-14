package org.fkit.mapper;


import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.fkit.domain.WebInfor;

public interface WebInforMapper {
	@Select("select * from tb_webInfor")
	WebInfor findWebInfor();
	@Update("update tb_webInfor set online = #{online} WHERE total = #{total}")
	WebInfor updateWebInfor(@Param("online")int online,@Param("total")int total);
}
