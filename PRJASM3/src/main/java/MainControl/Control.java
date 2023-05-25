package MainControl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


 // Servlet implementation class Control

@WebServlet(
		urlPatterns = { "/Control" }, 
		initParams = { 
				@WebInitParam(name = "username", value = "someone"), 
				@WebInitParam(name = "password", value = "somepassword")
		})
@SuppressWarnings("unused")
public class Control extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Control() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//process(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request, response);
	}
	
	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		try {
			request.getSession(true).invalidate();//make sure that email is valid
			String regexMail="^[A-Z0-9_a-z]+@[A-Z0-9\\.a-z]+\\.[A-Za-z]{2,6}$";
			String regex="[a-zA-Z0-9_!@#$%^&*]+";
			String userID = request.getParameter("username");
			String password = request.getParameter("password");
			Account acc =new Account();
			acc.setName(userID);acc.setPwd(password);
			HttpSession session=request.getSession(true);
			if(!acc.getPwd().matches(regex)||!acc.getName().matches(regexMail)) {
				session.setAttribute("error", "invalid syntax");
				response.sendRedirect("error.jsp");
				
			}
			if(request.getParameter("remember")!=null) {
				Cookie cookie=new Cookie("username",userID);
				cookie.setMaxAge(300);
				response.addCookie(cookie);
			}
					String uid = getServletContext().getInitParameter("username");
			String pwd = getServletContext().getInitParameter("password");
			if(userID != null && acc.getPwd().equals(pwd) && acc.getName().equals(uid)) {
				session.setAttribute("user", userID);
				response.sendRedirect("admin/ad.jsp");
				
			}else {
				session.setAttribute("error","wrong username or password");
				response.sendRedirect("error.jsp");
			}
		}catch(NullPointerException e){
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
		
		catch(Exception ex) {
			response.getWriter().println(ex);
		}
	}

}
