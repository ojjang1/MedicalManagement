package com.record.mapper;

import java.util.List;

import com.record.domain.RecordVO;


public interface RecordMapper {
	
	public List<RecordVO> getList();
	
	public void insertSelectKey(RecordVO record);
	
	public RecordVO read(int r_no);

	public int update(RecordVO record);
	
	public int delete(int r_no);

}
