package admin;

import java.sql.Connection;

import java.sql.PreparedStatement;

import DBconnetion.DBconnection;

public class AdminDButill {
	
	
	
	
	
	
	public static boolean adminreg( String email, String password,
			String name) {
		boolean ItemInserted = true;

		try {

	   DBconnection db = DBconnection.getInstance();
	   Connection	con = db.getCon();
	   PreparedStatement pst = con.prepareStatement("INSERT INTO admin( email ,password,name) values (?, ?, ? )");
	    	
	    	
			pst.setString(1,email);
			pst.setString(2, password);
			pst.setString(3, name);
			
		
			

			int rowCount = pst.executeUpdate();

			if (rowCount > 0) {
				ItemInserted = true;

			} else {
				ItemInserted = false;
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return ItemInserted;
	}
	
	
	
	
	
	
	
	public static boolean deleteCustomer(String id) {
		
		boolean isSuccess = false;
		 
		try {
			DBconnection db = DBconnection.getInstance();
	    	Connection	con = db.getCon();
	    	PreparedStatement pst1=con.prepareStatement("DELETE FROM user WHERE ID='"+id+"'");
	    	int rs=pst1.executeUpdate();
	    	
			if(rs>0) {
				isSuccess=true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
public static boolean deleteAds(String id) {
		
		boolean isSuccess = false;
		 
		try {
			DBconnection db = DBconnection.getInstance();
	    	Connection	con = db.getCon();
	    	PreparedStatement pst1=con.prepareStatement("DELETE FROM item WHERE itemId='"+id+"'");
	    	int rs=pst1.executeUpdate();
	    	
			if(rs>0) {
				isSuccess=true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
public static boolean updateadmin(String id,String name,String email) {
	
	boolean isSuccess = false;
	try{ 
		
		
		
		
		
		DBconnection db = DBconnection.getInstance();
    	Connection	con = db.getCon();
		PreparedStatement pst=con.prepareStatement("UPDATE admin SET name='"+name+"',email='"+email+"'"+"WHERE aid='"+id+"'");
		
		
		
		
		int row=pst.executeUpdate();
		 if(row>0) {
			 isSuccess = true;
		 }else {
			 isSuccess = false;
		 }
		 
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}	

}
