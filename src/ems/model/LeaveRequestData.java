package ems.model;

public class LeaveRequestData {
	private int leaveId;
	private String empid;
	private String name;
	private String date_of_leave;
	private String reason;
	private boolean status;
	
	//overloaded constructor
	public LeaveRequestData(int leaveId, String empid, String name, String date_of_leave, String reason,
			boolean status) {
		super();
		this.leaveId = leaveId;
		this.empid = empid;
		this.name = name;
		this.date_of_leave = date_of_leave;
		this.reason = reason;
		this.status = status;
	}
	
	//getters
	public String getEmpid() {
		return empid;
	}
	public String getName() {
		return name;
	}
	public String getDate_of_leave() {
		return date_of_leave;
	}
	public String getReason() {
		return reason;
	}
	
	//setters
	public void setEmpid(String empid) {
		this.empid = empid;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setDate_of_leave(String date_of_leave) {
		this.date_of_leave = date_of_leave;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}

	public int getLeaveId() {
		return leaveId;
	}

	public boolean isStatus() {
		return status;
	}

	public void setLeaveId(int leaveId) {
		this.leaveId = leaveId;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}
	
	
	
}
