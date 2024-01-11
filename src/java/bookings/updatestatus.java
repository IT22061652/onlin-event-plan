package bookings;

import jakarta.servlet.RequestDispatcher;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updatestatus")
public class updatestatus extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String st = request.getParameter("st");
		boolean isTrue;

		isTrue = bookingdbutill.updatetracking(id,st);
		if (isTrue == true) {

			RequestDispatcher dis = request.getRequestDispatcher("adminapp.jsp");
			request.setAttribute("status", "done2");
		     dis.forward(request, response);

			
		} else {
			RequestDispatcher dis = request.getRequestDispatcher("");
			request.setAttribute("status", "done2");
		     dis.forward(request, response);

		}
		
		
		
		
		
	}

}
