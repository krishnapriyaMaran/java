package businessLogicController;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import valueObject.Variables;
import businessObject.LoginPageBo;
import businessObject.loginBo;
/**
 * Servlet implementation class LoginPageServlet
 */
@WebServlet("/LoginPageServlet")
public class LoginPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	     
		 String user1=request.getParameter("username");  
	    
	          
	        HttpSession session=request.getSession();  
	        session.setAttribute("uname",user1);  
		
		System.out.println(user1);
		System.out.println("hai in servlet");
		Variables var_obj=new Variables();
		
		   var_obj.setLoginName(request.getParameter("username"));
        var_obj.setPassWord(request.getParameter("password"));		   
		   var_obj.setRole(request.getParameter("role"));
		   LoginPageBo bo_obj= new LoginPageBo();
		  // bo_obj.senddetails(var_obj);
		  
		   String username=request.getParameter("username");
		   String password=request.getParameter("password");
		   String Role=request.getParameter("role");
		      
		   
		 
	    	  System.out.println(Role);
	   
		    ArrayList<Variables> DetailsList= bo_obj.returnData();{
			for (Variables user : DetailsList) 
			    {    System.out.println("in for");
 	
					      if( username.equals(user.getLoginName())   &&  password.equals(user.getPassWord())   &&   Role.equals("Batch Owner"))
			     				  {
					    	  
                                  System.out.println("hello");  
			     			      //response.sendRedirect("BatchOwner.jsp");
                                  RequestDispatcher dd = request.getRequestDispatcher("BatchDetails1.jsp");

                                  dd.forward(request, response);
			     				  }
					      
					      else if(username.equals(user.getLoginName())   &&  password.equals(user.getPassWord())   &&   Role.equals("Trainees"))
					      {
					    	  RequestDispatcher dd = request.getRequestDispatcher("feedback.jsp");

                              dd.forward(request, response);
					    	  
					      }
					      
      			}
			 
	    	response.sendRedirect("error.jsp");
		    }	
	
	}
	
}

