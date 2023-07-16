package com.pro;

import java.util.Properties;

/*
String from = "tanmaychavan93@yahoo.com";
String pass ="Someshwari@";
// Recipient's email ID needs to be mentioned.
String to = "tanmaychavan93@yahoo.com";
String host = "smtp.mail.yahoo.com";
*/


import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
public class Tp {

	 public static void main(String[] args)
	   {
	      final String to = "tanmaychavan93@yahoo.com";
	      final String from = "tanmaychavan93@yahoo.com";

	      String host = "smtp.mail.yahoo.com";
	      Properties properties = System.getProperties();

	      properties.put("mail.smtp.host", host);
	      properties.put("mail.smtp.port", "587");
	      properties.put("mail.smtp.starttls.enable", "true");
	      properties.put("mail.smtp.auth", "true");

	      Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
	          protected PasswordAuthentication getPasswordAuthentication() {
	              return new PasswordAuthentication("tanmaychavan93", "Tanmaytest@123");
	          }
	      });

	      session.setDebug(true);
	      try {
	          MimeMessage message = new MimeMessage(session);

	          message.setFrom(new InternetAddress(from));
	          message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
	          message.setSubject("This is the Subject Line!");
	          message.setText("This is actual message");

	          System.out.println("sending...");
	          Transport.send(message);
	          System.out.println("Sent message successfully....");
	      } catch (MessagingException mex) {
	          mex.printStackTrace();
	      }
	   }
		
}
