<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>MiniChallenge WEBAPDE S18</title>
	<script type="text/javascript" src="vendors/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="vendors/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="vendors/bootstrap/css/bootstrap.min.css">
</head>
<style>
	<% 
		Cookie backgroundCookie = null;
		Cookie foregroundCookie = null;
		Cookie postCookie = null;
		Cookie paragraphCookie = null;
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for (Cookie x : cookies) {
				if (x.getName().equals("backgroundColor")) {
					backgroundCookie = x;
				} else if (x.getName().equals("foregroundColor")) {
					foregroundCookie = x;
				} else if (x.getName().equals("postColor")) {
					postCookie = x;
				} else if (x.getName().equals("paragraphCookie")) {
					paragraphCookie = x;
				}
			}
		}
		
		
	%>
	body {
		background-color: <%=(backgroundCookie == null) ? "WHITE" : backgroundCookie.getValue()%>;
		color: <%=(foregroundCookie == null) ? "WHITE" : foregroundCookie.getValue()%>;
	}
	
	center {
		background-color: <%=(postCookie == null) ? "GREEN" : postCookie.getValue()%>;
	}
</style>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4">
			</div>
			<div class="col-md-4">
				<center>
					<p>This sentence has five words. Here are <br>
						five more words. Five-word sentences are<br>
						fine. But several together become <br>
						monotonous. Listen to what is happening. <br>
						The writing is getting boring. The sound of <br>
						it drones. It's like a stuck record. The ear <br>
						demands some variety.</p>
				</center>	
			</div>
			<div class="col-md-4">
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
			</div>
			<div class="col-md-4">
				<center>
					<p> <%= (paragraphCookie != null) ? paragraphCookie.getValue() : "ORIGINAL PARAGRAPH" %> </p>
				</center>	
			</div>
			<div class="col-md-4">
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
			</div>
			<div class="col-md-4">
				<center>
					<a href="preferences.jsp">Set Preferences</a>
				</center>	
			</div>
			<div class="col-md-4">
			</div>
		</div>
	</div>
</body>
</html>