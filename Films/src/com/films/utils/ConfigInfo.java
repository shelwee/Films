package com.films.utils;

import java.util.Properties;

public class ConfigInfo {
	private static Properties cache = new Properties();
	static{
		try {
			cache.load(ConfigInfo.class.getClassLoader().getResourceAsStream("merchantInfo.properties"));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static String getValue(String key){
		return cache.getProperty(key);
	}
}
