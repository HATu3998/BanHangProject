package MainControl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Logout
 */
@WebServlet("/Logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logout() {
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
		// TODO Auto-generated method stub
		processRequest(request,response);
	}
    protected void processRequest(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
    	response.setContentType("text/html;charset=UTF-8");
    	try {
    		request.getSession(true).invalidate();
    		HttpSession session=request.getSession(true);
    		session.setAttribute("error", "logged out");
    		RequestDispatcher rd  =request.getRequestDispatcher("login.jsp");
    		rd.forward(request, response);
    	}catch(NullPointerException e) {
    		RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
    		rd.forward(request, response);
    	}catch (Exception ex) {
    		response.getWriter().println();
    	}
    	
    }
}
