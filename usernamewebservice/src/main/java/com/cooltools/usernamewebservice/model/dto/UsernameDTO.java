package com.cooltools.usernamewebservice.model.dto;

public class UsernameDTO {
	private String username;	
	private String token;

	public UsernameDTO(String username, String token) {
		this.username = username;
		this.token = token;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

}
