package org.fkit.service.impl;

import org.fkit.mapper.DocumentMapper;
import org.fkit.service.DocumentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("documentService")
public class DocumentServiceImpl implements DocumentService{
	@Autowired
	private DocumentMapper documentMapper;
	@Override
	public void addDocument(String fileName,String information) {
		// TODO Auto-generated method stub
		documentMapper.addDocument(fileName, information);
	}
	@Override
	public void addPicture(String fileName, String information) {
		documentMapper.addPicture(fileName, information);	
	}

}
