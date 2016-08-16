package com.pizzaflow.domain;

@SuppressWarnings("serial")
public class CashOrCheckPayment extends Payment {

	public CashOrCheckPayment() {}
	
	@Override
	public String toString() {
		return "CASH or CHECK: $" + getAmount();
	}
	
}
