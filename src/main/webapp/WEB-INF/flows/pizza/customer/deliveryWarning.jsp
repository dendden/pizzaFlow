<html xmlns:jsp="http://java.sun.com/JSP/Page">
  <jsp:output omit-xml-declaration="yes"/>
  <jsp:directive.page contentType="text/html;charset=UTF-8" />

	<head>
		<title>Spizza | Delivery Warning</title>
	</head>
	
	<body>
		<h2>Delivery Unavailable :(</h2>
		<p>The address is outside of our delivery area. You may
        still place the order, but you will need to pick it up
        yourself.</p>
        <![CDATA[
        	<a href="${flowExecutionUrl}&_eventId=accept">Continue, I'll pick up the order</a> |
        	<a href="${flowExecutionUrl}&_eventId=cancel">Forget it...</a>
        ]]>
	</body>

</html>