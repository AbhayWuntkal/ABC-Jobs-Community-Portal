package com.Lithan.Mini3;

import java.sql.ResultSet;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.opensymphony.xwork2.ActionSupport;

public class ForgotAction extends ActionSupport {

	private static final long serialVersionUID = -2675732503808798947L;
	private String email;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String execute() throws Exception {
		User fp = new User();
		UserBean forgot = null;
		ResultSet rs = fp.report(email);
		while (rs.next()) {
			forgot = new UserBean();
			forgot.setPword(rs.getString("pword"));
			String to = getEmail();
			Properties properties = new Properties();
			properties.put("mail.smtp.host", "smtp.gmail.com");
			properties.put("mail.smtp.socketFactory.port", "465");
			properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			properties.put("mail.smtp.auth", "true");
			properties.put("mail.smtp.port", "465");

			Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication("abcjobcommunity@gmail.com", "Abc@12345");
				}
			});
			try {
				MimeMessage message = new MimeMessage(session);
				message.setFrom(new InternetAddress("abcjobcommunity@gmail.com"));
				message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
				message.setSubject("ABC JOBS PORTAL!!");
				message.setText("We recommend you to delete this mail as soon as you login. Dear User, Your current password is " + forgot.getPword());
				Transport.send(message);
				System.out.println("message sent to " + getEmail());
			} catch (MessagingException e) {
				throw new RuntimeException(e);
			}

		}
		return "success";
	}

}