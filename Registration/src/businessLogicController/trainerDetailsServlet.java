package businessLogicController;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import businessObject.LoginPageBo;
import valueObject.Variables;

/**
 * Servlet implementation class trainerDetailsServlet
 */
@WebServlet("/trainerDetailsServlet")
public class trainerDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println(request.getParameter("param"));
	
		
		LoginPageBo bo_obj= new LoginPageBo();    
        
        
        
  	  ArrayList<Variables> Details_trainerList= bo_obj.returnTrainerDetails();
  	  request.setAttribute("course", Details_trainerList);
     	request.getRequestDispatcher("trainerDetails.jsp").forward(request, response);

  
  
     		
	

		
	}

	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
          
    		System.out.println("hai");
    		
    		LoginPageBo bo_obj= new LoginPageBo();    
            
            
            
            	  ArrayList<Variables> Details_trainerList= bo_obj.returnTrainerDetails();
            	  request.setAttribute("course", Details_trainerList);
               	request.getRequestDispatcher("trainerDetails.jsp").forward(request, response);

            
            
               		
    		
    		
    		
	}

}
