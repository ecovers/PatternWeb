package com.example.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.example.demo.dto.MainDTO;


@Component
@Mapper
public interface MainMapper {
	
	@Select("SELECT * FROM productinfo")
	List<MainDTO> main();
	
	@Select("SELECT * FROM productinfo where seq=1")
	MainDTO test();
	
	
//	@Select("SELECT * FROM simpleboard")
//	List<MainDTO> test();

}


