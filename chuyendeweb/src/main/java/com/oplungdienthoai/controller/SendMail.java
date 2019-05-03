package com.oplungdienthoai.controller;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.oplungdienthoai.util.Config;

public class SendMail {
	public static boolean sendMail(String to, String subject, String text) {
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(Config.USER_NAME, Config.PASS);
			}
		});
		try {
			Message message = new MimeMessage(session);
			message.setHeader("Content-Type", "text/html; charset=UTF-8");
			message.setFrom(new InternetAddress(Config.USER_NAME));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
			message.setSubject(subject);
			message.setContent(text, "text/html; charset=UTF-8");
			Transport.send(message);
		} catch (MessagingException e) {
			System.out.println(e.getMessage());
		}
		return true;
	}
}
