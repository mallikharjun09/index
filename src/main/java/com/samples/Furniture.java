package com.samples;

public abstract class Furniture {
	String company,colour;
	   double cost;
	abstract void setCompany(String company);
	abstract void setColour(String colour);
	abstract void setCost(double cost);
	abstract String getCompany();
	abstract String getColour();
	abstract double getCost();
}
