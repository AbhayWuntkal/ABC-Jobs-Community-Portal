package com.Lithan.Mini3;

import com.opensymphony.xwork2.ActionSupport;

public class DeleteAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4161685316741444272L;
	String Email, msg;
	User dao = new User();

	@Override
	public String execute() throws Exception {
		try {
			int isDeleted = dao.deleteUserDetails(Email);
			if (isDeleted > 0) {
				msg = "Record deleted successfully";
			} else {
				msg = "Some error";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "DELETE";
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		this.Email = email;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	
	

	
}
