package com.record.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.record.domain.RecordVO;
import com.record.mapper.RecordMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class RecordServiceImpl implements RecordService{
	
	private RecordMapper mapper;

	@Override
	public void register(RecordVO record) {
		
		log.info("--- register service.....");
		
		mapper.insertSelectKey(record);
		
	}
	

	@Override
	public RecordVO get(int r_no) {
		
		log.info("---- get service......." + r_no);
		
		return mapper.read(r_no);
	}

	@Override
	public List<RecordVO> getList() {

		log.info("------ getList service");
		
		return mapper.getList();
	}

	@Override
	public boolean modify(RecordVO record) {

		log.info("---- modify service..... " + record);
		
		return mapper.update(record) == 1;
	}

	@Override
	public boolean remove(int r_no) {
		
		log.info("---- remove service......" + r_no);
		
		return mapper.delete(r_no) == 1;
	}

}
