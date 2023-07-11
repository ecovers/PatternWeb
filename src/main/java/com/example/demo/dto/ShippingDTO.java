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
public class ShippingDTO {
	
	private int id;
	private String product_name;
	private String shipment_ea;
	private String check_ea;
	private String pass_ea;
	private String pass_rate;
	private String error_list;
	private String product_size;
	private String product_ea;
	
	private Date data_time;

	

	
}
