package com.Lithan.Mini3;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.opensymphony.xwork2.ActionSupport;

public class PublicProfile extends ActionSupport {

	private static final long serialVersionUID = -6750168050684601868L;
	private String Search;

	ResultSet rs = null;
	ResultSet rss = null;
	UserBean bean = null;
	UserBean beans = null;
	ArrayList<UserBean> beanList = null;
	ArrayList<UserBean> beanL = null;
	User admins = new User();
	private boolean noData = false;
	private String email;

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

	public String search() throws Exception {

		beanList = new ArrayList<UserBean>();
		if (Search == "") {
			addActionMessage("Search Field is Mandatory");
			return "error";
		} else {
			rs = admins.userList(Search);
			System.out.println(Search);
			int i = 0;

			while (rs.next()) {
		    	i++;
		    	bean = new UserBean();
		    	bean.setFname(rs.getString("fname"));
		    	bean.setLname(rs.getString("lname"));
		    	bean.setEmail(rs.getString("email"));
		    	beanList.add(bean);
		    	}

			if (i == 0) {
				noData = false;

			} else {
				noData = true;
			}
		}

		return "success";
	}

	public String fullprofile() throws SQLException, Exception {

		beanL = new ArrayList<UserBean>();

		System.out.println(email);
		rss = admins.userSearch(email);

		int i = 0;

		if (rss != null) {
			while (rss.next()) {
				i++;
				System.out.println(i);
				beans = new UserBean();
				beans.setFname(rss.getString("fname"));
				beans.setLname(rss.getString("lname"));
				beans.setEmail(rss.getString("email"));
				beans.setQualification(rss.getString("qualification"));
				beans.setCity(rss.getString("city"));
				beanL.add(beans);
			}
		}

		System.out.println(i);
		if (i == 0) {
			noData = false;
		} else {
			noData = true;
		}

		return "REPORTS";

	}

	public void setSearch(String Search) {
		this.Search = Search;
	}

	public String getSearch() {
		return Search;
	}

	public boolean isNoData() {
		return noData;
	}

	public void setNoData(boolean noData) {
		this.noData = noData;
	}

	public UserBean getBean() {
		return bean;
	}

	public void setBean(UserBean bean) {
		this.bean = bean;
	}

	public UserBean getBeans() {
		return beans;
	}

	public void setBeans(UserBean beans) {
		this.beans = beans;
	}

	public ArrayList<UserBean> getBeanList() {
		return beanList;
	}

	public void setBeanList(ArrayList<UserBean> beanList) {
		this.beanList = beanList;
	}

	public ArrayList<UserBean> getBeanL() {
		return beanL;
	}

	public void setBeanL(ArrayList<UserBean> beanL) {
		this.beanL = beanL;
	}

}
