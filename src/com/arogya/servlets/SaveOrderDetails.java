package com.arogya.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.arogya.databaseoperations.FetchArogyaDetails;

/**
 * Servlet implementation class CheckOrderQuantity
 */
@WebServlet("/SaveOrderDetails")
public class SaveOrderDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveOrderDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
			System.out.println("We are in DoPost of SaveOrderDetails ");
			PrintWriter out=response.getWriter();
			 String code = request.getParameter("orderCode");  
			 System.out.println("code in SaveOrderDetails " +code);
			 FetchArogyaDetails quantityOrder=new FetchArogyaDetails();
			int insertStatus=(int) quantityOrder.InsertOrderCode(code);	
			 System.out.println("Record inserted in table successfully"+insertStatus);
		}catch(Exception e){
			System.out.println(e);
		}
		
		doGet(request, response);
	}

}
