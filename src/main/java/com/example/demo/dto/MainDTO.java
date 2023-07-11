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
	
	private int id;
	private String product_name;
	private String product_number;
	private String product_size;
	private String product_location;
	private String product_ea;
	private String product_unit;
	private Date data_time;

	

	
}
