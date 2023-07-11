package com.example.demo.dto;


import java.util.Date;
import java.util.List;

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

public class AllDTO {
	
	private List<MainDTO> mainDTO;
	private List<ShippingDTO> shippingDTO;

}
