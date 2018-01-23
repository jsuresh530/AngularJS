package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

/**
 * Servlet implementation class AngularJsServlet
 */
public class AngularJsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AngularJsServlet() {
        //super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PersonData pd =new PersonData();
		
		pd.setfName("Suresh");
		pd.setlName("Babu");
		
		pd.setfName("Suresh1");
		pd.setlName("Babu1");
		
		String json = new Gson().toJson(pd.toString());
		response.setContentType("application/json");
		response.getWriter().write(json);
		
		System.out.println("gjdgjdfjkjkdfggdfjk "+json.toString());
	
	}


}
