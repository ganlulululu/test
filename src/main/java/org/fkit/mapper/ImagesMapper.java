package org.fkit.mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.domain.images;
public interface ImagesMapper {
 @Select("select * from images where image_id=#{imageId} and index_id=#{indexId}")
 	images findWithimagesIdAndindexId(@Param("imageId")String imageId,@Param("indexId")Integer indexId);
}
