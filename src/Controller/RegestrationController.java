package Controller;

import java.io.IOException;
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
import DAO.USER_DAO;

@WebServlet("/Reg")
public class RegestrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public RegestrationController() {
        super();
        // TODO Auto-generated constructor stub
    }
    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//==========================Getting Parameter from RegForm==================================== 
		String role=request.getParameter("role");
		String firstname=request.getParameter("First_Name");
		String lastname=request.getParameter("Last_Name");
		String username=request.getParameter("User_Name");
		String pass=request.getParameter("Password");
		String conpass=request.getParameter("Confirm_Password");
		String dob=request.getParameter("DOB");
		String email=request.getParameter("Email");
		String gender=request.getParameter("gender");
		
		String phone=request.getParameter("Phone_Number");
		String mother=request.getParameter("Mother_Name");
		String father=request.getParameter("Father_Name");
		
		String result=request.getParameter("Result");
		String achivement=request.getParameter("achivement");
		String experience=request.getParameter("experience");
		if(role.equals("Student"))
		{
			UserStudentBean student=new UserStudentBean(firstname, lastname, username, dob, email, gender, pass, conpass, role, father, mother, phone);
			USER_DAO dao=new User_DAO_Implementation();
			if(0<dao.saveStudent(student))
			{
				Message msg=new Message("Thanks For Regestration As a Student","Error","alert-damger");
				HttpSession session=request.getSession();
				session.setAttribute("message", msg);
				response.sendRedirect("RegestrationForm.jsp");
				}
			dao.updateStudent(student);
			dao.deleteStudent(student);
		}else if(role.equals("Teacher"))
		{
			UserTeacherBean teacher= new UserTeacherBean(firstname, lastname, username,email,gender,pass,conpass,role,achivement,result,experience,dob);
			USER_DAO dao=new User_DAO_Implementation();
			if(0<dao.saveTeacher(teacher))
			{
				Message msg=new Message("Thanks For Regestration As a Teacher","Error","alert-damger");
				HttpSession session=request.getSession();
				session.setAttribute("message", msg);
				response.sendRedirect("RegestrationForm.jsp");
			}
			
			dao.deleteTeacher(teacher);
			dao.updateTeacher(teacher);
		}else {
			System.out.println("Select Role"+role);
		}
		
		
		
		
	}

}
