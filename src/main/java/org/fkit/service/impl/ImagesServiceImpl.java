package org.fkit.service.impl;

import org.fkit.domain.images;
import org.fkit.mapper.ImagesMapper;
import org.fkit.service.ImagesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service("imagesService")
public class ImagesServiceImpl implements ImagesService{
	@Autowired
	private ImagesMapper imagesMapper;
	@Override
	public images load(String imageId,Integer indexId) {
		return imagesMapper.findWithimagesIdAndindexId(imageId, indexId);
	}

}
