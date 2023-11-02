package com.pureplus.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.pureplus.vo.MailVO;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class EmailService {

	@Autowired JavaMailSender emailSender;
	
	public void sendSimpleMessage(MailVO mailVo) {
		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom("hwang7384@gmail.com");;//보내는 관리자 멜주소로 부터
		message.setTo(mailVo.getAddress());//받는 멜 주소 저장
		message.setSubject(mailVo.getTitle());//받는 멜 제목
		message.setText(mailVo.getContent());//받는 멜 내용
		emailSender.send(message);//실제 메일 보내기
	}
}
