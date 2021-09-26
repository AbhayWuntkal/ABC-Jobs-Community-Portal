package com.Lithan.Mini3;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class User {

	public static Connection getConnection() throws Exception {

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");

			return DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/in0719a01l?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC",
					"IN0719A01L", "FACF738vQ");
		} catch (Exception e) {

			e.printStackTrace();

			return null;

		}

	}

	public int registerUser(String Fname, String Lname, String Pword, String Email, String Qualification, String City)

			throws Exception {
		int i = 0;
		try {

			String sql = "INSERT INTO programmer(fname, lname, pword, email, qualification, city) VALUES (?, ?, ?, ?, ?, ?)";

			PreparedStatement ps = getConnection().prepareStatement(sql);

			ps.setString(1, Fname);
			ps.setString(2, Lname);
			ps.setString(3, Pword);
			ps.setString(4, Email);
			ps.setString(5, Qualification);
			ps.setString(6, City);
			i = ps.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
			return i;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

	public ResultSet report(String Email) throws SQLException, Exception {

		ResultSet rs = null;
		try {
			String sql = "SELECT * FROM programmer where email=?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, Email);
			rs = ps.executeQuery();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

	public int updateProfile(String Fname, String Lname, String Qualification, String City, String Email)
			throws SQLException, Exception {
		int i = 0;
		try {
			String sqls = "Update programmer set fname = ?, lname = ?, qualification = ?, city = ? WHERE email = ? ";
			PreparedStatement ps = getConnection().prepareStatement(sqls);
			ps.setString(1, Fname);
			ps.setString(2, Lname);
			ps.setString(3, Qualification);
			ps.setString(4, City);
			ps.setString(5, Email);
			i = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception f) {
			f.printStackTrace();
		}
		return i;
	}

	public boolean userLogin(String Email, String Pword) throws SQLException, Exception {
		boolean whatthestatus = false;
		try {
			String sqls = "Select * from programmer WHERE email = ? and pword = ?";
			PreparedStatement ps = getConnection().prepareStatement(sqls);
			ps.setString(1, Email);
			ps.setString(2, Pword);
			ResultSet rs = ps.executeQuery();
			whatthestatus = rs.next();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception b) {
			b.printStackTrace();
		}
		return whatthestatus;
	}

	

	public int deleteUserDetails(String Email) throws SQLException, Exception {
		getConnection().setAutoCommit(false);
		int i = 0;
		try {
			String sql = "DELETE FROM programmer WHERE email = ?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, Email);
			i = ps.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
			getConnection().rollback();
			return 0;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

	public boolean adminLogin(String Uname, String A_pword) throws SQLException, Exception {
		boolean whatthestatus = false;
		try {
			String sqls = "Select * from admin WHERE uname = ? and a_pword = ?";
			PreparedStatement ps = getConnection().prepareStatement(sqls);
			ps.setString(1, Uname);
			ps.setString(2, A_pword);
			ResultSet rs = ps.executeQuery();
			whatthestatus = rs.next();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception b) {
			b.printStackTrace();
		}
		return whatthestatus;
	}

	public ResultSet view() throws SQLException, Exception {
		ResultSet rs = null;
		try {
			String sql = "SELECT * FROM programmer ";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			rs = ps.executeQuery();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}
	
	

	public ResultSet userList(String Search) throws SQLException, Exception {
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM programmer where fname Like ? or lname Like ?";
			PreparedStatement ps = getConnection().prepareStatement(sql);

			System.out.println(Search);
			ps.setString(1, "%" + Search + "%");
			ps.setString(2, "%" + Search + "%");
			rs = ps.executeQuery();

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}

		}

		return rs;

	}

	public ResultSet userSearch(String email) throws SQLException, Exception {
		ResultSet rs = null;
		try {
			String sql = "SELECT * FROM programmer where email = ?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, email);
			rs = ps.executeQuery();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}
}
