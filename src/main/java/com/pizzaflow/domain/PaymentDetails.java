package com.pizzaflow.domain;

import java.io.Serializable;

public class PaymentDetails implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private PaymentType paymentType;
	private String ccNum;
	
	public PaymentType getPaymentType() {
		return paymentType;
	}
	public void setPaymentType(PaymentType paymentType) {
		this.paymentType = paymentType;
	}
	public String getCcNum() {
		return ccNum;
	}
	public void setCcNum(String ccNum) {
		this.ccNum = ccNum;
	}

}
