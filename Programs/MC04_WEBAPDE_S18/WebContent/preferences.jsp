<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.webapde.s18.minichallenge.Color" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>MiniChallenge WEBAPDE S18</title>
	<script type="text/javascript" src="vendors/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="vendors/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="vendors/bootstrap/css/bootstrap.min.css">
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<form action="PreferencesServlet" method="post">
					<div class="form-group">
						<label for="background-color">Background color:</label>
						<select class="form-control" name="backgroundColor">
							<% for (Color x : Color.class.getEnumConstants()) { %>
								<option><%= x.name() %> </option>
							<% } %>
						</select>
					</div>
					<div class="form-group">
						<label for="background-color">Font color:</label>
						<select class="form-control" name="foregroundColor">
							<% for (Color x : Color.class.getEnumConstants()) { %>
								<option><%= x.name() %> </option>
							<% } %>
						</select>
					</div>
					<div class="form-group">
						<label for="background-color">Post color:</label>
						<select class="form-control" name="postColor">
							<% for (Color x : Color.class.getEnumConstants()) { %>
								<option><%= x.name() %> </option>
							<% } %>
						</select>
					</div>
					
					<div class="form-group">
						<label for="paragraph1">Paragraph 1:</label>
						<input type="text" class="form-control" id="paragraph1" name="paragraph">
					</div>

					<button type="submit" class="btn btn-default">Submit</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>