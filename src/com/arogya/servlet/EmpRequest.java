package com.arogya.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.arogya.databaseoperations.SupplyUpdate;

/**
 * Servlet implementation class EmpRequest
 */
@WebServlet("/EmpRequest")
public class EmpRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpRequest() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int pscId =Integer.parseInt(request.getParameter("ProdSubCatId"));
		String pscName = request.getParameter("ProdSubCatName");
		int pQty = Integer.parseInt(request.getParameter("ProdQtny"));	
		
		SupplyUpdate su= new SupplyUpdate();
		try {
			int insert =su.updateSupply(pscId,pscName,pQty);
			
			if(insert == 1 ){
			response.sendRedirect("supply.jsp");
			return;
						}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
