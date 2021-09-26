package com.Lithan.Mini3;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class AdminLogin extends ActionSupport implements SessionAware {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 961968598068186813L;
	private String Uname;
	private String A_pword;
	private SessionMap<String, Object> sessionMap;

	

	public String getUname() {
		return Uname;
	}

	public void setUname(String uname) {
		Uname = uname;
	}

	public String getA_pword() {
		return A_pword;
	}

	public void setA_pword(String a_pword) {
		A_pword = a_pword;
	}

	public void setSession(Map<String, Object> map) {
		this.sessionMap = (SessionMap)map;
	}

	public String execute() throws SQLException, Exception {
		if (Uname != null) {
			User bao = new User();
			boolean check = bao.adminLogin(Uname, A_pword);

			if (check == true) {
				String messages = "Login is successfull";

			} else {
				String messages = "Please Enter valid Username and PASSWORD";
				return "backLogin";
			}
			sessionMap.put("login", "true");
			sessionMap.put("Uname", Uname );

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
