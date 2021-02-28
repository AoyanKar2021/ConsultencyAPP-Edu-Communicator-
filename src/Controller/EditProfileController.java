package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Beans.UserTeacherBean;
import DAO.User_DAO_Implementation;


@WebServlet("/EditProfileController")
public class EditProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public EditProfileController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName=request.getParameter("fname");
		String lastName=request.getParameter("lname");
		String userName=request.getParameter("uname");
		String Pass=request.getParameter("pass");
		String email=request.getParameter("email");
		String dob=request.getParameter("dob");
		String Result=request.getParameter("result");
		HttpSession s=request.getSession();
		s.getAttribute("CurrentTeacher");
		
		UserTeacherBean tbean=(UserTeacherBean)s.getAttribute("CurrentTeacher");
		tbean.setFirstname(firstName);
		tbean.setLastname(lastName);
		tbean.setUsername(userName);
		tbean.setPassword(Pass);
		
		tbean.setDob(dob);
		tbean.setResult(Result);
		User_DAO_Implementation dao=new User_DAO_Implementation();
		boolean update=dao.updateTeacher(tbean);
		if(update==true)
		{
			System.out.println("Update Success");
		}
		
//		doGet(request, response);
	}

}
