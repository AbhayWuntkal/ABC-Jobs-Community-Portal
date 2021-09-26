package com.Lithan.Mini3;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = -546832946781675214L;
	private String Email;
	private String Pword;
	private SessionMap<String, Object> sessionMap;

	public String getEmail() {
		return this.Email;
	}

	public void setEmail(String Email) {
		this.Email = Email;
	}

	public String getPword() {
		return this.Pword;
	}

	public void setPword(String Pword) {
		this.Pword = Pword;
	}

	public void setSession(Map<String, Object> map) {
		this.sessionMap = (SessionMap)map;
	}

	public String execute() throws SQLException, Exception {
		if (Email != null) {
			User bao = new User();
			boolean check = bao.userLogin(Email, Pword);

			if (check == true) {
				String messages = "Login is successfull";

			} else {
				String messages = "Please Enter valid EMAIL and PASSWORD";
				return "backLogin";
			}
			sessionMap.put("login", "true");
			sessionMap.put("Email", Email);

		}
		return "login";

	}

	public String logout() {
		if (sessionMap != null) {
			sessionMap.invalidate();
		}
		return "logout";
	}

	
}
