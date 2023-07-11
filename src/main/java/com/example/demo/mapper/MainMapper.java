package com.example.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.example.demo.dto.MainDTO;
import com.example.demo.dto.ShippingDTO;


@Component
@Mapper
public interface MainMapper {
	
	@Select("SELECT * FROM product_admin")
	List<MainDTO> main();
	
	@Select("select b.product_name , b.product_size , b.product_ea , a.shipment_ea , a.check_ea , a.pass_ea , a.pass_rate , a.error_list from shipment_info a join product_admin b on a.product_name = b.product_name;")
	List<ShippingDTO> shipping();
	


}


