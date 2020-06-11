package com.record.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.record.domain.RecordVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/*
 *  2020-06-08
 *  ojjang 
 *  RecordMapper 쿼리 실행 테스트. 
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class RecordMapperTest {
	
	@Setter(onMethod_ = @Autowired)
	private RecordMapper mapper;
	
	
	// 전체 목록 조회 테스트
//	@Test //(성공)
	public void testgetList() {
		
		mapper.getList().forEach(record -> log.info(record));
		
	}
	
	//글 입력 테스트
//	@Test  //(성공)
	public void testinsertSelectKey() {
		RecordVO record = new RecordVO();
				
		record.setHospital("입력테스트병원");
		record.setDepartment("입력 과");
		record.setSickness("입력 증상");
		record.setKcd7("입력 질병코드");
		record.setRecord("입력 진료기록");
		record.setD_cost(4000);
		record.setPhrmacy("입력 약국");
		record.setMedicine("입력 약, 테스트약");
		record.setM_cost(3000);
		
		mapper.insertSelectKey(record);
		
		log.info(record);
	}
	
	// 글 하나만 불러오기 테스트
	@Test //(성공)
	public void testRead() {
		
		RecordVO record =mapper.read(7); 
		
		log.info(record);
		
	}
	
	// 글지우기 테스트
//	@Test //(성공)
	public void testDelete() {
		
		log.info("삭제 카운트" + mapper.delete(8));
		
	}
	
	// 글 수정 테스트
//	@Test //(성공)
	public void testUpdate() {
		
		RecordVO record = new RecordVO();
		record.setR_no(7);
		record.setHospital("수정테스트병원");
		record.setDepartment("수정 과");
		record.setSickness("수정 증상");
		record.setKcd7("수정 질병코드");
		record.setRecord("수정 진료기록");
		record.setD_cost(1000);
		record.setPhrmacy("수정 약국");
		record.setMedicine("수정 약, 테스트약");
		record.setM_cost(1000);
		
		log.info("수정 카운트: " + mapper.update(record));
		
	}
	
}
