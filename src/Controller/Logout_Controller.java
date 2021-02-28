package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Beans.Message;

/**
 * Servlet implementation class Logout_Controller
 */
@WebServlet("/Logoutt")
public class Logout_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Logout_Controller() {
        super();
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession logout=request.getSession();		
		logout.removeAttribute("CurrentTeacher");
		Message msg=new Message("Successfully Logout","success","alert-success");
		logout.setAttribute("message", msg);
		System.out.println("Pass to Logout controller");
		response.sendRedirect("Login.jsp");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
