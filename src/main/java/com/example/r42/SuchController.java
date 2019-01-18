package com.example.r42;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SuchController {

	@Value("${DB_HOST}") private String dbHost;
	@Value("${DB_PORT}") private String dbPort;
	
	@RequestMapping("/")
	public String suchHello(){
		return "Connecting to " + dbHost + ":" + dbPort;
	}
}
