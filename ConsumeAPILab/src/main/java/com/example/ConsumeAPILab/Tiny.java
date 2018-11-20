package com.example.ConsumeAPILab;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Tiny {
	 	private String name;
	    private String invented;
	    private long year;
	   
	    public Tiny() {}


		public Tiny(String name, String invented, Integer year) {
			super();
			this.name = name;
			this.invented = invented;
			this.year = year;
		}


		public String getName() {
			return name;
		}


		public void setName(String name) {
			this.name = name;
		}


		public String getInvented() {
			return invented;
		}


		public void setInvented(String invented) {
			this.invented = invented;
		}


		public long getYear() {
			return year;
		}


		public void setYear(Integer year) {
			this.year = year;
		}

		@Override
		public String toString() {
			return "Tiny [name=" + name + ", invented=" + invented + ", year=" + year + "]";
		}
		
//	    @JsonProperty("name")
//	    public String getName() { return name; }
//	    @JsonProperty("name")
//	    public void setName(String value) { this.name = value; }
//
//	    @JsonProperty("invented")
//	    public String getInvented() { return invented; }
//	    @JsonProperty("invented")
//	    public void setInvented(String value) { this.invented = value; }
//
//	    @JsonProperty("year")
//	    public long getYear() { return year; }
//	    @JsonProperty("year")
//	    public void setYear(long value) { this.year = value; }
//		@Override
//		public String toString() {
//			return "Tiny [name=" + name + ", invented=" + invented + ", year=" + year + "]";
//		}
		
	    
}
