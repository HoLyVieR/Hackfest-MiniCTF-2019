<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.beans.*" %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <link href="css/bootstrap.min.css" rel="stylesheet">
  </head>
  <body>

  	<%
  		if (request.getParameter("payload") != null) {
  			byte[] payload = request.getParameter("payload").getBytes();
  			XMLDecoder ois = new XMLDecoder(new ByteArrayInputStream(payload));
  	%>
  		<div class="well"><%= ois.readObject().toString() %></div>
  	<%
  		}
  	%>

  <div class="container">
  <h3>Deserialize me !</h3>
  <form method="GET">
    <div class="form-group">
      <label for="payload">Payload (XML)</label>
      <textarea name="payload" class="form-control" id="payload"></textarea>
    </div>

    <button type="submit" class="btn btn-primary">Submit !</button>
  </form>


  </body>
</html>








<%
//  FLAG-d01ac0d65567c15abd9d7b81d1caad34
%>