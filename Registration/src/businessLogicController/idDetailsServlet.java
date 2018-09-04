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
 * Servlet implementation class idDetailsServlet
 */
@WebServlet("/idDetailsServlet")
public class idDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public idDetailsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	
	
		Variables vo_obj=new Variables();
		vo_obj.setSort_id(request.getParameter("sort_id"));
		LoginPageBo bo_obj= new LoginPageBo();
		        
	  	  ArrayList<Variables> Details_IdList= bo_obj.IdDetail(vo_obj);
	  	  
    	  request.setAttribute("course", Details_IdList);
       	request.getRequestDispatcher("id.jsp").forward(request, response);;

	
	}

}
