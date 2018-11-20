package com.example.ConsumeAPILab;

import java.util.Arrays;

import javax.rmi.CORBA.Tie;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Complete {
	private String firstName;
	private String lastName;
	private String innovation;
	private Integer year;

//	private Complete[] complete;
//	private Tiny[] tiny;
//	
	public Complete () {}
	
	public Complete(String firstName, String lastName, String innovation, Integer year) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.innovation = innovation;
		this.year = year;
	}
	
	

	
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getInnovation() {
		return innovation;
	}

	public void setInnovation(String innovation) {
		this.innovation = innovation;
	}

	public Integer getYear() {
		return year;
	}

	public void setYear(Integer year) {
		this.year = year;
	}

//	@JsonProperty("complete")
//	public Complete[] getComplete() {
//		return complete;
//	}
//
//	@JsonProperty("complete")
//	public void setComplete(Complete[] value) {
//		this.complete = value;
//	}
//
//	@JsonProperty("tiny")
//	public Tiny[] getTiny() {
//		return tiny;
//	}
//
//	@JsonProperty("tiny")
//	public void setTiny(Tiny[] value) {
//		this.tiny = value;
//	}
//
//	@Override
//	public String toString() {
//		return "Complete [firstName=" + firstName + ", lastName=" + lastName + ", innovation=" + innovation + ", year="
//				+ year + ", complete=" + Arrays.toString(complete) + ", tiny=" + Arrays.toString(tiny) + "]";
	}

	

