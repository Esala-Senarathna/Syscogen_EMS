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
 * Servlet implementation class GetLeaveRequestsServlet
 */
@WebServlet("/GetLeaveRequestsServlet")
public class GetLeaveRequestsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetLeaveRequestsServlet() {
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
		
		List<LeaveRequestData> leaveDetailsArraylist = LeaveFunctionImpl.getLeaveRequests();
		request.setAttribute("leaveDetailsArraylist", leaveDetailsArraylist);
		
		RequestDispatcher dis = request.getRequestDispatcher("allLeaveRequests.jsp");
		dis.forward(request, response);
	}

}
