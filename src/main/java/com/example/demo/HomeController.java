package com.example.demo;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import reactor.core.publisher.Mono;

@RestController
public class HomeController {

	@Value("${sample.app-name}")
	private String appName;

	@Value("${sample.version}")
	private String version;

	@Value("${sample.lob}")
	private String lob;

	@GetMapping(path = "/getAppInfo")
	public Mono<Map<String, String>> getAppInfo() {
		Map<String, String> responseMap = new LinkedHashMap<>();
		responseMap.put("app-name", appName);
		responseMap.put("version", version);
		responseMap.put("lob", lob);
		responseMap.put("status", "running");
		return Mono.just(responseMap);
	}
}
