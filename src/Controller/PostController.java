package Controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Beans.PostBean;
import DAO.PostDAO;

@WebServlet("/PostController")
public class PostController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public PostController() {
        super();
        
    }

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Post_Title=request.getParameter("postTitle");
		String Post_Content=request.getParameter("titlecontent");
		String Post_Code=request.getParameter("codeeContent");
		String Post_pic=request.getParameter("pics");
		PostBean postbean=new PostBean();
		postbean.setPost_Title(Post_Title);
		postbean.setPost_Content(Post_Content);
		postbean.setPost_File(Post_pic);
		postbean.setPost_Code(Post_Code);
//		Post Data Passing
		PostDAO post =new PostDAO();
		boolean postStatus=post.post(postbean);
		if(postStatus==true)
		{
			postbean=post.retrivePostValue();
			HttpSession postSession =request.getSession();
			postSession.setAttribute("postValue", postbean);
		}else {
			System.out.println("Post Error");
		}
		
		
		
	}

}
