<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

	<head>
		<title>Spizza | Payment</title>
	</head>
	
	<body>
	
		<h2>Payment Details:</h2>
		
		<form:form commandName="paymentDetails" name="paymentForm">
		
			<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}" />
			
			<form:radiobutton path="paymentType" value="CASH" label="Cash (taken at delivery)"
				onclick="hideCreditCardField()" /><br/>
			<form:radiobutton path="paymentType" value="CHECK" label="Check (taken at delivery)"
				onclick="hideCreditCardField()" /><br/>
			<form:radiobutton path="paymentType" value="CREDIT_CARD" label="Credit Card: "
				onclick="showCreditCardField()" /><br/>
				<form:input path="ccNum" cssStyle="visibility: hidden;" /><br/><br/>
				
			<input type="submit" class="button" name="_eventId_paymentSubmitted" value="Submit" />
			<input type="submit" class="button" name="_eventId_cancel" value="Cancel" />
			
		</form:form>
		
		<script>
			 function showCreditCardField() {
				 var ccNumStyle = document.paymentForm.ccNum.style;
				 ccNumStyle.visibility = 'visible';
			 }
			 
			 function hideCreditCardField() {
				 var ccNumStyle = document.paymentForm.ccNum.style;
				 ccNumStyle.visibility = 'hidden';
			 }
		</script>
	</body>

</html>