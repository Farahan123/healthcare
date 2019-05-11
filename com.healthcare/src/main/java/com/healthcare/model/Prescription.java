package com.healthcare.model;

import org.springframework.stereotype.Component;

@Component
public class Prescription {
private String medicine;
private int timeAsDay;
private int noOfDay;
private String whenToTake;

public Prescription(){}

public Prescription(String medicine, int timeAsDay, int noOfDay, String whenToTake) {
	super();
	this.medicine = medicine;
	this.timeAsDay = timeAsDay;
	this.noOfDay = noOfDay;
	this.whenToTake = whenToTake;
}

public String getMedicine() {
	return medicine;
}

public void setMedicine(String medicine) {
	medicine = medicine;
}

public int getTimeAsDay() {
	return timeAsDay;
}

public void setTimeAsDay(int timeAsDay) {
	this.timeAsDay = timeAsDay;
}

public int getNoOfDay() {
	return noOfDay;
}

public void setNoOfDay(int noOfDay) {
	this.noOfDay = noOfDay;
}

public String getWhenToTake() {
	return whenToTake;
}

public void setWhenToTake(String whenToTake) {
	this.whenToTake = whenToTake;
}

@Override
public String toString() {
	return "Patient [Medicine=" + medicine + ", timeAsDay=" + timeAsDay + ", noOfDay=" + noOfDay + ", whenToTake="
			+ whenToTake + "]";
}

}