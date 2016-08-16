<html xmlns:form="http://www.springframework.org/tags/form"
     xmlns:jsp="http://java.sun.com/JSP/Page">
  <jsp:output omit-xml-declaration="yes"/>
  <jsp:directive.page contentType="text/html;charset=UTF-8" />

	<head>
		<title>Spizza | Create Pizza</title>
	</head>
	
	<body>
		<h2>Build your Pizza:</h2>
		<form:form commandName="pizza">
		
			<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}" />
			
			<b>Size:</b><br/>
			<form:radiobutton path="size" label="Small (12-inch)" value="SMALL" /><br/>
			<form:radiobutton path="size" label="Medium (14-inch)" value="MEDIUM" /><br/>
			<form:radiobutton path="size" label="Large (16-inch)" value="LARGE" /><br/>
			<form:radiobutton path="size" label="Ginormous (20-inch)" value="GINORMOUS" /><br/><br/>
			
			<b>Toppings:</b><br/>
			<form:checkboxes path="toppings" items="${toppingsList}" delimiter="<br>" /><br/><br/>
			
			<input type="submit" class="button" name="_eventId_addPizza" value="Add to Order" />
			<input type="submit" class="button" name="_eventId_cancel" value="Cancel" />
			
		</form:form>
	</body>

</html>