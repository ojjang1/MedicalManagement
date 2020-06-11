package com.record.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.record.domain.RecordVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class RecordServiceTest {
	
	@Setter(onMethod_ = @Autowired)
	private RecordService service;
	
//	@Test //service 객체가 잘 주입되는지 확인
	public void testExist() {
		log.info(service);
		assertNotNull(service);
	}
	
//	@Test   //service 를 통해 입력이 잘 되는지 확인
	public void testRegister() {
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
		
		service.register(record);
		
		log.info("생성된 게시물의 번호: " + record.getR_no());
	}
	
	
//	@Test // service를 통해 목록이 잘 불러와 지는지 확인
	public void testGetList() {
		
		service.getList().forEach(record -> log.info(record));
		
	}
	
//	@Test // service를 통해 해당 자료가 잘 불러와 지는지 확인
	public void testGet() {
		
		log.info(service.get(9));
		
	}
	
//	@Test //service를 통해 해당 자료 수정 확인
	public void testModify() {
		
		RecordVO record = service.get(9);
		
		if(record == null) return;
		
		record.setSickness("증상을 수정하였다.");
		record.setRecord("진료기록을 수정하였다.");
		
		log.info("수정 되였는지 여부: " + service.modify(record));
		
	}
	
//	@Test //service를 통해 해당 자료 삭제 확인
	public void testDelete() {
		
		log.info("삭제 되었는지 여부: " + service.remove(10));
		
	}
	
	

}
