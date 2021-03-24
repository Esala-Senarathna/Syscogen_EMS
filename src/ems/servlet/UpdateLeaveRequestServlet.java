package ems.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ems.model.LeaveRequestData;
import ems.services.LeaveFunctionImpl;

/**
 * Servlet implementation class UpdateLeaveRequestServlet
 */
@WebServlet("/UpdateLeaveRequestServlet")
public class UpdateLeaveRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateLeaveRequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("leaveid");
    	String empId = request.getParameter("eid");
    	String name = request.getParameter("name");
    	String date_of_leave = request.getParameter("dateOfLeave");
    	String reason = request.getParameter("reason");
    	
    	boolean isSuccessfullyUpdated;
    	
    	isSuccessfullyUpdated = LeaveFunctionImpl.updateLeaveRequestbyEmployee(id, empId, name, date_of_leave, reason);
	
    	if(isSuccessfullyUpdated == true) {
    		
    		List<LeaveRequestData> leaveDetailsArraylist = LeaveFunctionImpl.getLeaveDetailsbyEmpId(empId);
			request.setAttribute("leaveDetailsArraylist", leaveDetailsArraylist);
    		
    		RequestDispatcher dis = request.getRequestDispatcher("leaveRequestAdded.jsp");
    		dis.forward(request, response);
    	}else {
    		RequestDispatcher dis = request.getRequestDispatcher("leaveRequestNOTadded.jsp");
    		dis.forward(request, response);
    	}
	
	}

}
