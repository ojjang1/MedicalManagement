package com.record.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.ui.ModelMap;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.FlashMap;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration( {"file:src/main/webapp/WEB-INF/spring/root-context.xml" ,
						"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Log4j
public class RecordControllerTests {
	
	@Setter(onMethod_ = @Autowired)
	private WebApplicationContext ctx;
	
	private MockMvc mocMvc;
	
	@Before
	public void setup() {
		this.mocMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
//	@Test
	public void testList() throws Exception {
		
		log.info(
				mocMvc.perform(MockMvcRequestBuilders.get("/record/list"))
				.andReturn()
				.getModelAndView()
				.getModelMap());
		
	}
	
//	@Test
	public void testRegister() throws Exception{
		
		String resultPage = mocMvc.perform(MockMvcRequestBuilders.post("/record/register")
											.param("hospital", "새글 입력 병원")
											.param("department", "테스트 입력 과")
											.param("sickness", "입력 증상")
											.param("kcd7", "입력 질병코드")
											.param("record", "테스트 입력 기록")
											.param("d_cost","4000")
											.param("phrmacy", "입력 약국")
											.param("medicine", "입력 약")
											.param("m_cost", "3000")
											).andReturn().getModelAndView().getViewName();
		
		log.info("결과" + resultPage);
																	
	}
	
//	@Test
	public void testGet() throws Exception{
		
		log.info( mocMvc.perform(MockMvcRequestBuilders.get("/record/get")
								.param("r_no", "11"))
					.andReturn().getModelAndView().getModelMap());
		
	}
	
//	@Test
	public void testModify() throws Exception {
		
		String resultPage = mocMvc.perform(MockMvcRequestBuilders.post("/record/modify")
										.param("r_no", "11")
										.param("hospital", "수정  병원")
										.param("department", "수정  과")
										.param("sickness", "수정 증상")
										.param("kcd7", "수정 질병코드")
										.param("record", "테스트 수정 기록")
										.param("d_cost","24000")
										.param("phrmacy", "수정 약국")
										.param("medicine", "수정 약")
										.param("m_cost", "23000")
								).andReturn().getModelAndView().getViewName();
		
		log.info(resultPage + "로 이동");
		
	}
	
	@Test
	public void testRemove() throws Exception {
		
		String resultPage =  mocMvc.perform(MockMvcRequestBuilders.post("/record/remove")
										.param("r_no", "13"))
									.andReturn().getModelAndView().getViewName();
		
		log.info(resultPage + "로 이동");
		
	}

}
