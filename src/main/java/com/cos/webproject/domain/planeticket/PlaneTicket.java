package com.cos.webproject.domain.planeticket;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class PlaneTicket {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String airlinenm;
	
	private String depairportnm; // 출발공항
	private String arrairportnm; // 도착공항
	private Long depplandtime; // 출발시간
	private Long arrplandtime;  // 도착시간
	
	
	private Integer economycharge;
	private String vihicleId;
	private String leadtime;
	// 결국 AirportDto의 데이터를 다 받아와야하는데 AirportDto가 데이터베이스에 담기는 정보도 아니라서 밑에 처럼
	// 넣어줄 수가 없는 문제가 생긴다.
	// private AirportDto airportDto;

}
