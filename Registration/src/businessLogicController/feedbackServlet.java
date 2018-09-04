package businessLogicController;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import businessObject.LoginPageBo;
import valueObject.Variables;

/**
 * Servlet implementation class feedbackServlet
 */
@WebServlet("/feedbackServlet")
public class feedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
   		
   		System.out.println("hai1");
   		HttpSession session=request.getSession(false);  
        String n=(String)session.getAttribute("uname");  
        
   		System.out.println(n);
   		
	     Variables vo_obj=new Variables();
	    vo_obj.setTrainer(request.getParameter("trainer"));
	    vo_obj.setTrainee(n);
	    
	         LoginPageBo bo_obj=new LoginPageBo();
	      
         bo_obj.getTopics(vo_obj);
      
         ArrayList<Variables> Details_CourseList= bo_obj.getTopics(vo_obj);
	  	  
   	  request.setAttribute("course", Details_CourseList);
      	request.getRequestDispatcher("feedback.jsp").forward(request, response);;

	

	    
   	}

}
