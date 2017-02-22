package com.webapde.s18.minichallenge;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PreferencesServlet")
public class PreferencesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PreferencesServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Color backgroundColor = Color.valueOf(request.getParameter("backgroundColor").toUpperCase());
		Color foregroundColor = Color.valueOf(request.getParameter("foregroundColor").toUpperCase());
		Color postColor = Color.valueOf(request.getParameter("postColor").toUpperCase());
		String paragraph = request.getParameter("paragraph");
		
		Cookie backgroundCookie = new Cookie("backgroundColor", backgroundColor.getHexValue());
		backgroundCookie.setMaxAge(60*60*24);
		response.addCookie(backgroundCookie);
		Cookie foregroundCookie = new Cookie("foregroundColor", foregroundColor.getHexValue());
		foregroundCookie.setMaxAge(60*60*24);
		response.addCookie(foregroundCookie);
		Cookie postCookie = new Cookie("postColor", postColor.getHexValue());
		postCookie.setMaxAge(60*60*24);
		response.addCookie(postCookie);
		
		Cookie paragraphCookie = new Cookie("paragraphCookie", paragraph);
		paragraphCookie.setMaxAge(60*60*24);
		response.addCookie(paragraphCookie);
		
		response.sendRedirect("index.jsp");
	}
}
