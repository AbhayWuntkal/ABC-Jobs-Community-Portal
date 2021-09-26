package com.Lithan.Mini3;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class ReportAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7104426416953320453L;

	ResultSet rs = null;
	UserBean bean = null;
	ArrayList<UserBean> beanList = null;
	User user = new User();
	private boolean noData = false;

	@Override
	public String execute() throws Exception { 
		
		HttpSession session = ServletActionContext.getRequest().getSession(false);
		
		if (session == null || session.getAttribute("login") == null) {
			return "Failure";
		
		} else { 
			String Email = (String) session.getAttribute("Email");
		
		
			beanList = new ArrayList<UserBean>();
			rs = user.report(Email);
			int i = 0;
			if (rs != null) {

				while (rs.next()) {

					i++;
					bean = new UserBean();
					bean.setFname(rs.getString("fname"));
					bean.setLname(rs.getString("lname"));
					bean.setEmail(rs.getString("email"));
					bean.setQualification(rs.getString("qualification"));
					bean.setCity(rs.getString("city"));
					beanList.add(bean);

				}

			}
			if (i == 0) {
				noData = false;
			} else {
				noData = true;

			}
			return "REPORT";
		}
	}
	public boolean isNoData() {
		return noData;
		
	}
	
	public void setNoData(boolean noData) {
		this.noData = noData;
	}
	
	public ArrayList<UserBean> getBeanList() {
		return beanList;
	}
	
	public void setBeanList(ArrayList<UserBean> beanList) {
		this.beanList = beanList;
	} 
	
}
	
	
	
	
	
	

		