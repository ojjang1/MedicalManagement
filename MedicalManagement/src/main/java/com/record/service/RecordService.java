package com.record.service;

import java.util.List;

import com.record.domain.RecordVO;

public interface RecordService {
	
	// 기록 등록  mapper.isertSelectKey(RecordVO record)
	public void register(RecordVO record);
	
	// 기록 보기 mapper.read(int r_no)
	public RecordVO get(int r_no);
	
	// 기록 목록 보기 mapper.getList()
	public List<RecordVO> getList();
	
	// 기록 수정 mapper.update(int r_no)
	public boolean modify(RecordVO record);
	
	// 기록 삭제 mapper.delete(int r_no)
	public boolean remove(int r_no);

}
