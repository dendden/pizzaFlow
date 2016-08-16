<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
	<title>Spizza | Order Summary</title>
</head>

<body>
	<h2>Your Order:</h2>
	
	<h3>Deliver to:</h3>
	<p>
		${order.customer.name}<br/>
		${order.customer.address}<br/>
		${order.customer.city}, ${order.customer.state}, ${order.customer.zipCode}<br/>
		${order.customer.phoneNumber} 
	</p>
	
	<hr/>
	
	<h3>Order Total: <fmt:formatNumber type="currency" value="${order.total}" /></h3>
	
	<hr/>
	
	<h3>Pizzas:</h3>
	
	<c:if test="${fn.length(order.pizzas) eq 0}">
		<b>No pizzas in this order</b>
	</c:if>
	<br/>
	
	<c:forEach items="${order.pizzas}" var="pizza">
		<li>${pizza.size}:
			<c:forEach items="${pizza.toppings}" var="topping">
				<c:out value="topping" />, 
			</c:forEach>
		</li>
	</c:forEach>
	
	<form:form>
		<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}" />
		<input type="submit" name="_eventId_createPizza" value="Add New Pizza" />
		<c:if test="${fn.length(order.pizzas) gt 0}">
			<input type="submit" name="_eventId_checkout" value="Proceed to Checkout" />
		</c:if>
		<input type="submit" name="_eventId_cancel" value="Cancel" />
	</form:form>
	
</body>

</html>