package com.samples;

public class Bed {
	 String company,colour;
	   double cost;
	   public Bed(String company,String colour,double cost){
		   this.company=company;
		   this.colour=colour;
		   this.cost=cost;
	   }
	   public String getCompany(){
		   return company;
	   }
	   public String getColour(){
		   return colour;
	   }
	   public double getCost(){
		   return cost;
	   }
}
