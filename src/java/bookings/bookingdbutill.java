package bookings;

import java.sql.Connection;
import java.sql.PreparedStatement;

import DBconnetion.DBconnection;

public class bookingdbutill {
	
	
	
	

	public static boolean insertbooking( String cid, String eid,
			String date,String title) {
		boolean ItemInserted = true;

		try {

	   DBconnection db = DBconnection.getInstance();
	   Connection	con = db.getCon();
	   PreparedStatement pst = con.prepareStatement("INSERT INTO  appoinments( cid ,eventid,date,eventname) values (?, ?, ?,? )");
	    	
	    	
			pst.setString(1, cid);
			pst.setString(2, eid);
			pst.setString(3, date);
			pst.setString(4, title);
			
		
			

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
	
	
	
public static boolean cancelbooking(String id) {
		
		boolean isSuccess = false;
		 
		try {
			DBconnection db = DBconnection.getInstance();
	    	Connection	con = db.getCon();
	    	PreparedStatement pst1=con.prepareStatement("DELETE FROM appoinments WHERE Aid='"+id+"'");
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
	
	
public static boolean updatetracking(String id,String st) {
	
	boolean isSuccess = false;
	try{ 
		
		
		
		
		
		DBconnection db = DBconnection.getInstance();
    	Connection	con = db.getCon();
		PreparedStatement pst=con.prepareStatement("UPDATE appoinments SET status='"+st+"'"+"WHERE Aid='"+id+"'");
		
		
		
		
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
