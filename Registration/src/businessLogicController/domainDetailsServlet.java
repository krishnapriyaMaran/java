package businessLogicController;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import businessObject.LoginPageBo;
import valueObject.Variables;

/**
 * Servlet implementation class domainDetailsServlet
 */
@WebServlet("/domainDetailsServlet")
public class domainDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		System.out.println("in servlet");
		Variables vo_obj=new Variables();
		vo_obj.setSort_domain(request.getParameter("sort_domain"));
		LoginPageBo bo_obj= new LoginPageBo();
		        
	  	  ArrayList<Variables> Details_DomainList= bo_obj.DomainDetail(vo_obj);
	  	  
    	  request.setAttribute("course", Details_DomainList);
       	request.getRequestDispatcher("domain.jsp").forward(request, response);;

		
		
	}

}
