package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Beans.Message;
import Beans.UserStudentBean;
import Beans.UserTeacherBean;
import DAO.User_DAO_Implementation;




@WebServlet("/Log")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("UserName");
		String password=request.getParameter("password");
		String role=request.getParameter("role");
		if(username.equals("") && password.equals("") ) {
			Message msgvalidation=new Message("Please fillup all the field properly","Error","alert-damger");
			HttpSession session=request.getSession();
			session.setAttribute("message", msgvalidation);
			response.sendRedirect("Login.jsp");
			
		}
		else {
			if(role!=null)
			{
				User_DAO_Implementation userStudent=new User_DAO_Implementation();
				UserStudentBean studentObj=(UserStudentBean)userStudent.loginStudent(username, password);
				if(studentObj!= null){
					HttpSession student=request.getSession();
					student.setAttribute("CurrentStudent", studentObj);
					student.setAttribute("role", role);
					response.sendRedirect("User_Profile.jsp");
				}
				else {
					Message msg=new Message("Something went wrong ! try another","Error","alert-damger");
					HttpSession session=request.getSession();
					session.setAttribute("message", msg);
					response.sendRedirect("Login.jsp");
				}
				
				
			}
			else {
				User_DAO_Implementation userTeacher=new User_DAO_Implementation();
				UserTeacherBean teacherObj=(UserTeacherBean)userTeacher.loginTeacher(username, password);
				if(teacherObj!= null){
					HttpSession teacher=request.getSession();
					teacher.setAttribute("CurrentTeacher", teacherObj);
					response.sendRedirect("User_Profile.jsp");
					System.out.println(" Logout controller");
					
				}
				else {
					Message msg=new Message("Something went wrong ! try another","Error","alert-damger");
					HttpSession session=request.getSession();
					session.setAttribute("message", msg);
					response.sendRedirect("Login.jsp");
				}
			}
			
		}
		
		
		
	}

}
