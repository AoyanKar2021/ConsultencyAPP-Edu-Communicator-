package DAO;


import Beans.UserStudentBean;
import Beans.UserTeacherBean;

public interface USER_DAO {
	public int saveStudent(UserStudentBean student);
	public boolean updateStudent(UserStudentBean student);
	public boolean deleteStudent(UserStudentBean student);
	public int saveTeacher(UserTeacherBean teacher);
	public boolean updateTeacher(UserTeacherBean teacher);
	public boolean deleteTeacher(UserTeacherBean teacher);
	public UserStudentBean loginStudent(String Email ,String Pass);
	public UserTeacherBean loginTeacher(String Email ,String Pass);
}
