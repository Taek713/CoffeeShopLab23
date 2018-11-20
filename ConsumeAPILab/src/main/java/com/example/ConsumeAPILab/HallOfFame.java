package com.example.ConsumeAPILab;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

public class HallOfFame {
	
	private List<Complete> complete;
	private List<Tiny> tiny;
	
	
	
		public List<Complete> getComplete() {
		return complete;
	}
	public void setComplete(List<Complete> complete) {
		this.complete = complete;
	}
	public List<Tiny> getTiny() {
		return tiny;
	}
	public void setTiny(List<Tiny> tiny) {
		this.tiny = tiny;
		
	}
	@Override
	public String toString() {
		return "HallOfFame [complete=" + complete + ", tiny=" + tiny + "]";
	}
	
	
//		private String firstName;
//	    private String lastName;
//	    private String innovation;
//	    private long year;
//
//	    @JsonProperty("firstName")
//	    public String getFirstName() { return firstName; }
//	    @JsonProperty("firstName")
//	    public void setFirstName(String value) { this.firstName = value; }
//
//	    @JsonProperty("lastName")
//	    public String getLastName() { return lastName; }
//	    @JsonProperty("lastName")
//	    public void setLastName(String value) { this.lastName = value; }
//
//	    @JsonProperty("innovation")
//	    public String getInnovation() { return innovation; }
//	    @JsonProperty("innovation")
//	    public void setInnovation(String value) { this.innovation = value; }
//
//	    @JsonProperty("year")
//	    public long getYear() { return year; }
//	    @JsonProperty("year")
//	    public void setYear(long value) { this.year = value; }
}
