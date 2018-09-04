package businessLogicController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import businessObject.LoginPageBo;
import valueObject.Variables;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	
   		
   		System.out.println("hai");
   		Variables vo_obj=new Variables();
   		vo_obj.setEmployee_id(request.getParameter("employee_id"));
   		vo_obj.setUsername(request.getParameter("username"));
   		vo_obj.setPassword(request.getParameter("password"));
   		vo_obj.setConfirm_password(request.getParameter("confirm_password"));
   		vo_obj.setRole(request.getParameter("role"));
   		
   		LoginPageBo bo_obj=new LoginPageBo();
   		String msg=bo_obj.insertRegister( vo_obj);
   	
   		System.out.println(msg);
   		
   		
   		if(msg.equals("success"))
		{
			response.sendRedirect("success.jsp");
		}
		else
		{
			
			response.sendRedirect("error.jsp");
		}

   	}

}
