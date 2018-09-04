package businessLogicController;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import businessObject.LoginPageBo;
import valueObject.Variables;

/**
 * Servlet implementation class BatchRegisterServlet
 */
@WebServlet("/BatchRegisterServlet")
public class BatchRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		System.out.println("hai in servlet");
		Variables vo_obj=new Variables();
		vo_obj.setBatch_code(request.getParameter("batch_code"));
		vo_obj.setTrainee_id(request.getParameter("trainee_id"));
		vo_obj.setStrength(Integer.parseInt(request.getParameter("strength")));
		vo_obj.setDomain(request.getParameter("domain"));
		vo_obj.setStart_date(request.getParameter("start_date"));
		vo_obj.setEnd_date(request.getParameter("end_date"));
        vo_obj.setTrainer_id(request.getParameter("trainer_id"));
        vo_obj.setBatch_owner_name(request.getParameter("batch_owner_name"));
        LoginPageBo bo_obj= new LoginPageBo();
		String msg=bo_obj.batchregister(vo_obj);
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
