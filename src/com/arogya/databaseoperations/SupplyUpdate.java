package com.arogya.databaseoperations;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.arogya.connection.GetCon;

public class SupplyUpdate {

	public int updateSupply(int pscid,String pscname,int pqty) throws SQLException{
		GetCon gc=new GetCon();
		Connection con=gc.getCon();
		if(con!= null){
			PreparedStatement psmt=con.prepareStatement("insert into Supplyoffice (product_subcat_id,product_subcat_name,product_quantity) values(?,?,?)"); 
	        psmt.setInt(1, pscid); 
	        psmt.setString(2, pscname);
	        psmt.setInt(3, pqty);
			
			
			int rowCount = psmt.executeUpdate();
	           
	          return rowCount;
		}
		else{
			System.out.println("no connection");
		}
		return 0;
	}
	
}
