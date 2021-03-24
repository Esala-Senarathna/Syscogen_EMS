package ems.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ems.services.LeaveFunctionImpl;

/**
 * Servlet implementation class DeleteLeaveRequestServlet
 */
@WebServlet("/DeleteLeaveRequestServlet")
public class DeleteLeaveRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteLeaveRequestServlet() {
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
		String leaveId = request.getParameter("leaveRequestID");
		
		boolean isTrue = LeaveFunctionImpl.deleteLeaveRequest(leaveId);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("employeeRequestLeave.jsp");
			dis.forward(request, response);
		}
		else {
			System.out.println("not deleted");
		}
		
	}

}
