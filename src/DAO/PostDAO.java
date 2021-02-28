package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import Beans.PostBean;
import Util.DBConnection;

public class PostDAO {
	Connection con=null;
	public boolean post(PostBean postbean)
	{
		boolean status=false;
		String Query="insert into posttable(Post_Title,Post_Content,PostCode,Post_File) values(?,?,?,?)";
		try {
			this.con=(Connection) DBConnection.Datasource().getConnection();
			if(this.con!=null)
			{
				PreparedStatement pstatement=con.prepareStatement(Query);
				pstatement.setString(1, postbean.getPost_Title());
				pstatement.setString(2, postbean.getPost_Content());
				pstatement.setString(3, postbean.getPost_Code());
				pstatement.setString(4, postbean.getPost_File());
				
				
				int postStore=pstatement.executeUpdate();
				if(postStore>0)
				{
					System.out.println("Post Updated");
					status=true;
				}
				else {
					System.out.println(" Post Not Updated");
				}
				
				con.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}
	public PostBean retrivePostValue()
	{
		PostBean pbean=null;
		String query="select * from posttable";
		try {
			this.con=(Connection) DBConnection.Datasource().getConnection();
			if(con!=null)
			{
				PreparedStatement statement=con.prepareStatement(query);
				ResultSet rs=statement.executeQuery();
				if(rs.next())
				{
					pbean=new PostBean();
					pbean.setPost_Title(rs.getString("Post_Title"));
					pbean.setPost_Content(rs.getString("Post_Content"));;
					pbean.setPost_Code(rs.getString("PostCode"));
					
					
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pbean;
	}
	
}
