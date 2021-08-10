package com.cos.webproject.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.webproject.domain.user.User;
import com.cos.webproject.domain.user.UserRepository;
import com.cos.webproject.web.dto.UsernameCheckDto;

import lombok.RequiredArgsConstructor;
;

@RequiredArgsConstructor
@Controller
public class UserController {
	private final UserRepository userRepository;
	private final HttpSession session;
	
	@GetMapping({"/", "main"})
	public String mainForm() {
		return "main/mainForm";
	}
	
	@GetMapping("/authagreeForm")
	public String agreeForm() {
		return "auth/agreeForm";
	}

	@GetMapping("/authjoinForm")
	public String joinForm() {
		return "auth/joinForm";
	}
	
	@GetMapping("/authloginForm")
	public String loginForm() {
		return "auth/loginForm";
	}
	
	@GetMapping("/authjoinendForm")
	public String joinend() {
		return "auth/join-end";
	}
	
	@PostMapping("/auth/login")
	public String cloginForm(User user) {
		System.out.println("username : "+user.getUsername());
		System.out.println("password : "+user.getPassword());
		User userEntity = userRepository.mLogin(user.getUsername(), user.getPassword());
		if(userEntity == null) {
			return "redirect:/authloginForm";
		} else {
			session.setAttribute("principal", userEntity);
			return "redirect:/";
		}
	}
	
	@PostMapping("/auth/joincomplete")
	public String joincomplete(User user) {  
		userRepository.save(user);
		return "redirect:/authjoinendForm";
	}
	
	@PostMapping("/auth/usernamecheck")
	public @ResponseBody String usernamecheck(@RequestBody UsernameCheckDto usernameCheckDto) {
		// findAll()하려면 컬렉션 형태에 담아줘야 함.
		User userEntity = userRepository.mFindUsername(usernameCheckDto.getUsername());
		System.out.println(userEntity);
		if(userEntity == null) {
			return "ok";
		} else {
			return "false";
		}
	}
	

}
