package com.example.demo.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class MainDTO {
	
	private int seq;
	private String prod_order_num;
	private String order_num;
	private Date order_date;
	private String order_con;
	private String shipping_atr;
	private String fulfilment;
	private String claim_con;
	private String product_num;
	private String product_name;
	private String option_info;
	private int amount;
	private String customer_name;
	private String customer_id;
	private String reciever_name;
	
	/*
	 * public void setB_sdate(String parameter) throws ParseException {
	 * SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	 * this.b_sdate = dateFormat.parse(parameter); }
	 * 
	 * public void setB_edate(String parameter) throws ParseException {
	 * SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	 * this.b_edate = dateFormat.parse(parameter); }
	 */
	
}
