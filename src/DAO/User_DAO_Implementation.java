package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import Beans.UserStudentBean;
import Beans.UserTeacherBean;
import Util.DBConnection;

public class User_DAO_Implementation implements USER_DAO {
	private Connection con=null;
	
	int regestered;
//...................................... Student Save ............................
	@Override
	public int saveStudent(UserStudentBean student) {
		
		String Query="insert into studenttable(FirstName,LastName,UserName,Password,ConfirmPassword,DateOfBirth,Email,Gender,FatherName,MotherName,phoneNumber) values(?,?,?,?,?,?,?,?,?,?,?)";
		
		try {
			this.con=(Connection) DBConnection.Datasource().getConnection();
			if(this.con!=null)
			{
				PreparedStatement pstatement=con.prepareStatement(Query);
				pstatement.setString(1, student.getFirstname());
				pstatement.setString(2, student.getLastname());
				pstatement.setString(3, student.getUsername());
				pstatement.setString(4, student.getPassword());
				pstatement.setString(5, student.getConfirmpassword());
				pstatement.setString(6, student.getDateOFBirth());
				
				pstatement.setString(7, student.getEmail());
				pstatement.setString(8, student.getGender());
				pstatement.setString(9, student.getFatherName());
				pstatement.setString(10, student.getConfirmpassword());
				pstatement.setString(11, student.getParentNumber());
				
				this.regestered=pstatement.executeUpdate();
				if(this.regestered>0)
				{
					System.out.println("Updated");
				}
				else {
					System.out.println(" Not Updated");
				}
				con.close();
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return regestered;
	}
	//...................................... Student Login ............................
	@Override
	public UserStudentBean loginStudent(String Email ,String Pass) {
		UserStudentBean loginStudent=null;
		String Query="select * from studenttable where Email=? and Password =?";
		try {
			this.con=(Connection) DBConnection.Datasource().getConnection();
			if(this.con!=null)
			{
				PreparedStatement pstatement=con.prepareStatement(Query);
				pstatement.setString(1, Email);
				pstatement.setString(2, Pass);
				ResultSet rs=pstatement.executeQuery();
				if(rs.next())
				{
					loginStudent=new UserStudentBean();
					loginStudent.setEmail(rs.getString("Email"));
					loginStudent.setPassword(rs.getString("Password"));
					
				}
				con.close();
			}	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return loginStudent;
	}
	//...................................... Teacher Save ............................
		@Override
		public int saveTeacher(UserTeacherBean teacher) {
			String Query="insert into teachertable(FirstName,LastName,UserName,Password,ConfirmPassword,Date_OF_Birth,Email,Gender,Role,Result,Experience,Achivement) values(?,?,?,?,?,?,?,?,?,?,?,?)";
			
			try {
				this.con=(Connection) DBConnection.Datasource().getConnection();
				if(this.con!=null)
				{
					PreparedStatement pstatement=con.prepareStatement(Query);
					pstatement.setString(1, teacher.getFirstname());
					pstatement.setString(2, teacher.getLastname());
					pstatement.setString(3, teacher.getUsername());
					pstatement.setString(4, teacher.getPassword());
					pstatement.setString(5, teacher.getConfirmpassword());
					pstatement.setString(6, teacher.getDob());
					
					pstatement.setString(7, teacher.getEmail());
					pstatement.setString(8, teacher.getGender());
					pstatement.setString(9, teacher.getRole());
					pstatement.setString(10, teacher.getResult());
					pstatement.setString(11, teacher.getAchivement());
					pstatement.setString(12, teacher.getExperience());
					
					this.regestered=pstatement.executeUpdate();
					if(this.regestered>0)
					{
						System.out.println("Updated");
					}
					else {
						System.out.println(" Not Updated");
					}
					con.close();
				}
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return regestered;
		}
	//...................................... Teacher Login ............................
	@Override
	public UserTeacherBean loginTeacher(String Email ,String Pass) {
		UserTeacherBean loginTeacher=null;
		String Query="select * from teachertable where Email=? and Password =?";
		try {
			this.con=(Connection) DBConnection.Datasource().getConnection();
			if(this.con!=null)
			{
				PreparedStatement pstatement=con.prepareStatement(Query);
				pstatement.setString(1, Email);
				pstatement.setString(2, Pass);
				ResultSet rs=pstatement.executeQuery();
				if(rs.next())
				{
					loginTeacher=new UserTeacherBean();
					
					
					loginTeacher.setFirstname(rs.getString("FirstName"));
					loginTeacher.setLastname(rs.getString("LastName"));
					loginTeacher.setUsername(rs.getString("UserName"));
					loginTeacher.setEmail(rs.getString("Email"));
					loginTeacher.setPassword(rs.getString("Password"));
					loginTeacher.setDob(rs.getString("Date_OF_Birth"));
					loginTeacher.setGender(rs.getString("Gender"));
					
				}
				con.close();
			}	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return loginTeacher;
	}
	
// ======================== Teacher Profile Update ===================================
	@Override
	public boolean updateTeacher(UserTeacherBean teacher) {
		boolean status=false;
		String query="update teachertable set FirstName=?,LastName=?,UserName=?,Date_OF_Birth=?,Result=? where Email=?";
		try {
			this.con=(Connection) DBConnection.Datasource().getConnection();
			if(con!=null)
			{
				PreparedStatement tea =con.prepareStatement(query);
				tea.setString(1, teacher.getFirstname());
				tea.setString(2, teacher.getLastname());
				tea.setString(3, teacher.getUsername());
				tea.setString(4, teacher.getDob());
				tea.setString(5, teacher.getResult());
				tea.setString(6, teacher.getEmail());
				int updaterow=tea.executeUpdate();
				if(updaterow<0)
				{
					status=true;
				}
				
				
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}
//====================================================================================
	@Override
	public boolean updateStudent(UserStudentBean student) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteStudent(UserStudentBean student) {
		// TODO Auto-generated method stub
		return false;
	}
	

	

	@Override
	public boolean deleteTeacher(UserTeacherBean teacher) {
		// TODO Auto-generated method stub
		return false;
	}
	//====================================================================================
	
}
