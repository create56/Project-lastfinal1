package com.cos.webproject.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.cos.webproject.domain.planeticket.PlaneTicket;
import com.cos.webproject.domain.planeticket.PlaneTicketRepository;
import com.cos.webproject.dto.AirportDto;
import com.cos.webproject.utils.KimHaeJejuDataDownload;
import com.cos.webproject.web.dto.TicketReqDto;
import com.google.gson.Gson;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class PlaneTicketController {
	
	private final HttpSession session;
	private final PlaneTicketRepository planeticketrepository;

	@GetMapping("/ticketcheck")
	public String ticketcheck() {
		return "reservation/ticket-check";
	}
	
	@GetMapping("/ticketForm")
	public String ticketForm(){
		return "reservation/ticketForm";
	}
	
	@GetMapping("/checkin")
	public String checkin() {
		return "check/check-in";
	}
	
	@GetMapping("/travelForm")
	public  String travelForm() {
		return "travel/travelForm";
	}
	
	@GetMapping("/ticketgo")
	public String ticketgo() {
		session.getAttribute("KJairportListDto");
		return "reservation/ticket-go";
	}
	
	// 1. 사용자의 요청을 받으면 일단 dto랑 비교해서 출력하고 싶은데 dto랑 비교하는게 너무 어렵다.... 차라리 내 데이터 베이스에 데이터 다 넣어놓고 비교하는게 쉬움.
	// 그리고 ticketgo 페이지는 하나인데 김해 제주꺼만 받아와서 비교할 수 없음.
	// 2. 출발지, 도착지 등을 받아서 데이터베이스랑 비교 한 다음 데이터를 뿌려줘야 하는데 Dto를 아직 데이터베이스에 넣어야지 요청을 받고 데이터를 뿌려줄 수 있다.
	// 3. planeticketrepository에서 검색하면 데이터 받아와서 뿌려줘야 하는데 쿼리문이 출발지 도착지를 두개를 가져와서 요청한 값이랑 맞으면 뿌려줘야 하는데
	// AND도 아니고 OR도 아니고 두개의 값이 다 같으면 찾아서 뿌려주는 쿼리문이 필요하다.
	@PostMapping("/user/ticketgo")
	public String ticketgo(TicketReqDto ticketReqDto, Model model) {
		 
		System.out.println(ticketReqDto);
		
		// 1번 PlaneTicket 제대로 받아야함. (날짜데이터를 자바에서 어떻게 받는지 잘모르겠다) - 해결
		// 2번 잘받았는데 busan seoul 이 아니라 코드값이 필요
		// 3번 잘받았는데 날짜에 작대기를 없애야함.
		String a = ticketReqDto.getDepplandtime();
		String b = ticketReqDto.getArrplandtime();
		String parsegetDepplandtime = a.replaceAll("-", "");
		String parsegetArrplandtime = b.replaceAll("-", "");
		ticketReqDto.setDepplandtime(parsegetDepplandtime);
		ticketReqDto.setArrplandtime(parsegetArrplandtime);
		System.out.println(parsegetDepplandtime);
		System.out.println(parsegetArrplandtime);
		
		StringBuilder ticketReq = new StringBuilder();
		ticketReq.append(ticketReqDto.getDepairportnm());
		ticketReq.append(ticketReqDto.getArrairportnm());
		ticketReq.append(parsegetDepplandtime);
		ticketReq.append(parsegetArrplandtime);
	
		// 2번 받은데이터를 토대로 api 요청
		
        try {
            String result = KimHaeJejuDataDownload.goAirport(ticketReqDto);
           Gson gson = new Gson();
           AirportDto airportDto = gson.fromJson(result, AirportDto.class);
           System.out.println(airportDto);
           session.setAttribute("KJairportListDto", airportDto.getResponse().getBody().getItems().getItem());
           return "redirect:/ticketgo";

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
       return null;
	}
	
	@GetMapping("/ticketreturn")
	public String ticketreturn() {
		return "reservation/ticket-return";
	}
	
	@GetMapping("/payForm")
	public String payForm() {
		return "reservation/payForm";
	}

//    @GetMapping("/airport")
//    public String airport(Model model) {
//        try {
//            String result = KimHaeJejuDataDownload.goAirport();
//            Gson gson = new Gson();
//            AirportDto airportDto = gson.fromJson(result, AirportDto.class);
//            System.out.println(airportDto);
//            model.addAttribute("airportListDto", airportDto.getResponse().getBody().getItems().getItem());
//            return "reservation/ticket-go";
//        } catch (Exception e) {
//            System.out.println(e.getMessage());
//        }
//        return null;
//    }
}
