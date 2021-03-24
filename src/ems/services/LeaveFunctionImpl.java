package ems.services;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import ems.model.LeaveRequestData;
import ems.util.DBconnection;

public class LeaveFunctionImpl implements LeaveFunctions {

	private static Connection con = null;
	private static Statement statement = null;
	private static ResultSet resultSet = null;

	public static boolean insertLeaveRequestMethod(String eid, String name, String dateOfLeave, String Reason) {
		boolean isSuccessfullyAdded = false;

		// DB connection
		try {
			con = DBconnection.getConnection();
			statement = con.createStatement();

			// query to add details
			String sql = "insert into pending_leave_requests values(0,'" + eid + "', '" + name + "','" + dateOfLeave
					+ "','" + Reason + "',false)";

			int result = statement.executeUpdate(sql);

			if (result > 0) {
				isSuccessfullyAdded = true;
			} else {
				isSuccessfullyAdded = false;
			}

		} catch (Exception e) {
			System.out.println("Database connection error");
			e.printStackTrace();
		}

		return isSuccessfullyAdded;
	}

	public static List<LeaveRequestData> getLeaveDetailsbyEmpId(String empId) {
		ArrayList<LeaveRequestData> leaveArraylist = new ArrayList<>();

		try {
			con = DBconnection.getConnection();
			statement = con.createStatement();

			String sql = "select * from pending_leave_requests where employeeId = '" + empId + "'";
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				int leaveId = resultSet.getInt(1);
				String employeeId = resultSet.getString(2);
				String name = resultSet.getString(3);
				String date_of_leave = resultSet.getString(4);
				String reason = resultSet.getString(5);
				boolean status = resultSet.getBoolean(6);

				LeaveRequestData leaveDetails = new LeaveRequestData(leaveId, employeeId, name, date_of_leave, reason,
						status);
				leaveArraylist.add(leaveDetails);
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return leaveArraylist;
	}

	public static boolean updateLeaveRequestbyEmployee(String id, String empId, String name, String date_of_leave,
			String reason) {
		boolean isSuccessfullyUpdated = false;

		int ConvertedId;
		ConvertedId = Integer.parseInt(id);
		try {
			con = DBconnection.getConnection();
			statement = con.createStatement();

			String sql = "update pending_leave_requests set employeeId = '" + empId + "',name = '" + name
					+ "', date_of_leave = '" + date_of_leave + "',reason = '" + reason + "' where requestId = '"
					+ ConvertedId + "'";

			int result = statement.executeUpdate(sql);

			if (result > 0) {
				isSuccessfullyUpdated = true;
			} else {
				isSuccessfullyUpdated = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccessfullyUpdated;
	}

	public static boolean deleteLeaveRequest(String leaveId) {
		boolean isSuccess = false;
		int ConvertedId;
		ConvertedId = Integer.parseInt(leaveId);

		try {
			con = DBconnection.getConnection();
			statement = con.createStatement();

			String sql = "delete from pending_leave_requests where requestId = '" + ConvertedId + "'";
			int result = statement.executeUpdate(sql);

			if (result > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	public static List<LeaveRequestData> getLeaveRequests() {
		ArrayList<LeaveRequestData> leaveArraylist = new ArrayList<>();

		try {
			con = DBconnection.getConnection();
			statement = con.createStatement();

			String sql = "select * from pending_leave_requests where status=0";
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				int leaveId = resultSet.getInt(1);
				String employeeId = resultSet.getString(2);
				String name = resultSet.getString(3);
				String date_of_leave = resultSet.getString(4);
				String reason = resultSet.getString(5);
				boolean status = resultSet.getBoolean(6);

				LeaveRequestData leaveDetails = new LeaveRequestData(leaveId, employeeId, name, date_of_leave, reason,
						status);
				leaveArraylist.add(leaveDetails);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return leaveArraylist;
	}
	
	public static List<LeaveRequestData> getLeaveRequestbyLeaveId(String leave_id){
		ArrayList<LeaveRequestData> leaveArraylist = new ArrayList<>();
		
		try {
			con = DBconnection.getConnection();
			statement = con.createStatement();

			String sql = "select * from pending_leave_requests where requestId = '" + leave_id + "'";
			resultSet = statement.executeQuery(sql);
			
			while (resultSet.next()) {
				int leaveId = resultSet.getInt(1);
				String employeeId = resultSet.getString(2);
				String name = resultSet.getString(3);
				String date_of_leave = resultSet.getString(4);
				String reason = resultSet.getString(5);
				boolean status = resultSet.getBoolean(6);

				LeaveRequestData leaveDetails = new LeaveRequestData(leaveId, employeeId, name, date_of_leave, reason,
						status);
				leaveArraylist.add(leaveDetails);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		return leaveArraylist;
	} 
	
	public static boolean updateLeaveRequestbyManager(String id, String empId, String name, String date_of_leave,
			String reason, String leavestatus) {
		boolean isSuccessfullyUpdated = false;
		int val = 0;
		boolean leavestatusBoolean =Boolean.parseBoolean(leavestatus);
		if(leavestatusBoolean == true) {
			val = 1;
		}else {
			val = 0;
		}
		
		
		int ConvertedId;
		ConvertedId = Integer.parseInt(id);
		try {
			con = DBconnection.getConnection();
			statement = con.createStatement();

			String sql = "update pending_leave_requests set employeeId = '" + empId + "',name = '" + name
					+ "', date_of_leave = '" + date_of_leave + "',reason = '" + reason + "',status='"+val+"' where requestId = '"
					+ ConvertedId + "'";

			int result = statement.executeUpdate(sql);

			if (result > 0) {
				isSuccessfullyUpdated = true;
			} else {
				isSuccessfullyUpdated = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccessfullyUpdated;
		
	}
	
	public static List<LeaveRequestData> getConfirmedLeaveRequests(){
		ArrayList<LeaveRequestData> leaveArraylist = new ArrayList<>();
		
		try {
			con = DBconnection.getConnection();
			statement = con.createStatement();

			String sql = "select * from pending_leave_requests where status=1";
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				int leaveId = resultSet.getInt(1);
				String employeeId = resultSet.getString(2);
				String name = resultSet.getString(3);
				String date_of_leave = resultSet.getString(4);
				String reason = resultSet.getString(5);
				boolean status = resultSet.getBoolean(6);

				LeaveRequestData leaveDetails = new LeaveRequestData(leaveId, employeeId, name, date_of_leave, reason,
						status);
				leaveArraylist.add(leaveDetails);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return leaveArraylist;
	}
}
