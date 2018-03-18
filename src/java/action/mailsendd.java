package action;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author JP1
 */
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class mailsendd {

    public static boolean sendMail(String key, String sub, String mail) {
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "587");
//        String from ="testjpinfotech@gmail.com";

        Session session = Session.getDefaultInstance(props,
        new javax.mail.Authenticator() {
        protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication("nikilp306@gmail.com","9032101994");
        }
        });

        System.out.println("code   " + key);
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(sub));
            message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(mail));
            message.setSubject("key for decryption");
            message.setText(key);
            Transport.send(message);
            System.out.println("MAIL SEND SUCCESFULLY");
            System.out.println(message);
            return true;
        } 
        
        catch (MessagingException e) {
            e.printStackTrace();
             return false;
        }
       
    }

}

