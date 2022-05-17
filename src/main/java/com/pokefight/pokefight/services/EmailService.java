package com.pokefight.pokefight.services;

import com.pokefight.pokefight.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service("mailService")
public class EmailService {

    SimpleMailMessage message;

    @Autowired
    public JavaMailSender emailSender;

    private EmailService() {
        message = new SimpleMailMessage();
        message.setFrom("noreply@pokefight.quest");
    }

    public void sendGeneralMessage(User user, String subject, String body) {
        message.setTo(user.getEmail());
        message.setSubject(subject);
        message.setText(body);

        try { this.emailSender.send(message); }
        catch (MailException exception) { System.err.println(exception.getMessage()); }
    }

    public void sendAccountCreatedMessage(User user) {
        message.setTo(user.getEmail());
        message.setSubject("Account Created");
        message.setText("Welcome to PokeFight " + user.getUsername() + "!");

        try { this.emailSender.send(message); }
        catch (MailException exception) { System.err.println(exception.getMessage()); }
    }

    public void sendContactReceivedMessage(User user, String subject, String body) {
        message.setTo(user.getEmail());
        message.setSubject("PokeFight: Message Received");
        message.setText("Your message regarding: \"" + subject + "\" has been received. We will get back to you as soon as possible.");

        try { this.emailSender.send(message); }
        catch (MailException exception) { System.err.println(exception.getMessage()); }
    }

}
