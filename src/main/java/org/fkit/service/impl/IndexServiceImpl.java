package org.fkit.service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.fkit.domain.index;
import org.fkit.mapper.IndexMapper;
import org.fkit.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service("indexService")
public class IndexServiceImpl implements IndexService{
	@Autowired
	private IndexMapper indexMapper;
	@Override
	public List<index> getindex(String name){
		return indexMapper.findWithname(name);
	}
	public index getPicture(String name){
		return indexMapper.findPictureWithname(name);
	}
	
}
