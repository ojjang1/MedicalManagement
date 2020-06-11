package com.record.domain;

import java.util.Date;

import lombok.Data;

@Data
public class RecordVO {
	
	private int r_no;
	private String hospital;
	private String department;
	private String sickness;
	private String kcd7;
	private String record;
	private int d_cost;
	private String phrmacy;
	private String medicine;
	private int m_cost;
	private Date visitdate;
	private int pic;
	

}
