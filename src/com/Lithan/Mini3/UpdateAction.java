package com.Lithan.Mini3;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import freemarker.core.ReturnInstruction.Return;

public class UpdateAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -542679231103249662L;

	private String Fname;
	private String Lname;
	private String Qualification;
	private String City;
	
	public String getFname() {
		return Fname;
	}

	public void setFname(String Fname) {
		this.Fname = Fname;
	}

	public String getLname() {
		return Lname;
	}

	public void setLname(String Lname) {
		this.Lname = Lname;
	}

	public String getQualification() {
		return Qualification;
	}

	public void setQualification(String Qualification) {
		this.Qualification = Qualification;
	}
	
	public String getCity() {
		return City;
	}

	public void setCity(String City) {
		this.City = City;
	}

	public String execute() throws SQLException, Exception
	
	{
		HttpSession session=ServletActionContext.getRequest().getSession(false);
		
		if(session==null || session.getAttribute("login")==null) {
			return "Failure";
		}
		
		else 
		{
			String Email = (String) session.getAttribute("Email");
			
			User bao = new User();
			int insert = bao.updateProfile(Fname, Lname, Qualification, City, Email);
			String msgs;
			if (insert > 0)
			{
				msgs = "Update Succesful";
				
			}
			else 
			{
				msgs = "Some error";
			}
		}
		return "update";
	}		
	
	public String updateJsp()
	{
		return "redirect";
	}
}


