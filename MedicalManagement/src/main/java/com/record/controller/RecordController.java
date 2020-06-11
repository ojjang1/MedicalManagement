package com.record.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.record.domain.RecordVO;
import com.record.service.RecordService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/record/*")
@Log4j
@AllArgsConstructor
public class RecordController {
	
	private RecordService service;
	
	@GetMapping("/list")
	public void getList(Model model) {
		
		log.info("---- /record/list  GET ----");
		
		model.addAttribute("list", service.getList());
		
	}
	
	@GetMapping("/register")
	public void register() {
		
		log.info("---- /regord/register GET ----");
		
	}
	
	@PostMapping("/register")
	public String register(RecordVO record, RedirectAttributes rttr) {
		
		log.info("---- /record/register  POST ---" + record);
		
		service.register(record);
		
		rttr.addFlashAttribute("result", record.getR_no());
		
		return "redirect:/record/list" ;
	}
	
	@GetMapping("/get")
	public void get(@RequestParam("r_no") int r_no, Model model) {
		
		log.info("--- /record/get ---" + r_no);
		
		model.addAttribute("record", service.get(r_no));
		
	}
	
	@PostMapping("/modify")
	public String modify(RecordVO record, RedirectAttributes rttr) {
		
		log.info("--- /record/modify ---" + record);
		
		if (service.modify(record)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/record/list" ;
	}
	
	@PostMapping("/remove")
	public String removd(@RequestParam("r_no") int r_no, RedirectAttributes rttr) {
		
		log.info("--- /record/remove --- " + r_no);
		
		if(service.remove(r_no)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/record/list" ;
	}
	
	@GetMapping("/calender")
	public void gocalender() {
		
	}
	
	

}
