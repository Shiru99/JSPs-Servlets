package io.summer.service;

import java.util.HashMap;

import io.summer.dto.User;


public class LoginService {
	
	HashMap<String, String> users = new HashMap<String, String>();
	
	
	public LoginService() {
		users.put("John Doe", "Johnny d’Eu");
		users.put("Jene Doe", "Jenny d’Eu");
	}

	public boolean authenticate(String userName, String password) {

		if (userName.trim().isEmpty() || userName == null || password.trim().isEmpty() || password == null) {
			return false;
		}

		return true;
	}
	
	public User getUser(String userName) {
		User user = new User();
		
		user.setUserName(userName);
		
		String fullName = users.get(userName);
		if(fullName == null) {
			fullName = "New-User";
		}

		user.setFullName(fullName);
		
		return user;
		
	}
}

