package com.pizzaflow.domain;

@SuppressWarnings("serial")
public class CreditCardPayment extends Payment {

	private String authorization;
	
	public CreditCardPayment() {}

	public void setAuthorization(String authorization) {
		this.authorization = authorization;
	}
	
	@Override
	public String toString() {
		return "CREDIT: $" + getAmount() + "; AUTH: " + authorization;
	}
	
}
