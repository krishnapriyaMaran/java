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
 * Servlet implementation class DateDetailsServlet
 */
@WebServlet("/DateDetailsServlet")
public class DateDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    //	doGet(request, response);

		Variables vo_obj=new Variables();
		vo_obj.setSort_start_date(request.getParameter("start_date"));
		vo_obj.setSort_end_date(request.getParameter("end_date"));
		LoginPageBo bo_obj= new LoginPageBo();
		        
	  	  ArrayList<Variables> Details_IdList= bo_obj.DateDetail(vo_obj);
	  	  
    	  request.setAttribute("course", Details_IdList);
       	request.getRequestDispatcher("date.jsp").forward(request, response);;

	
	}

}
