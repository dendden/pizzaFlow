<html xmlns:jsp="http://java.sun.com/JSP/Page">
  <jsp:output omit-xml-declaration="yes" />
  <jsp:directive.page contentType="text/html;charset=UTF-8" />
  
  <head>
  	<title>Spizza | Thank You!</title>
  </head>
  
  <body>
  	<h2>Thank you for your order!</h2>
  	<![CDATA[<a href='${flowExecutionUrl}&event_id=finished'>Finish</a>]]>
  </body>
  
</html>