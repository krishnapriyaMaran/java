package businessObject;

import java.util.ArrayList;

import dataAccessObject.LoginPageDao;
import valueObject.Variables;

public class TraineeBo {
	
	
	
	public ArrayList<Variables> getTopics(Variables vo_obj)
	{
	LoginPageDao dao_obj=new LoginPageDao();
	 return dao_obj.getfeedback(vo_obj);
	}
	
	public ArrayList<Variables> returnTrainerDetails()
	{  System.out.println("in bo");
	LoginPageDao dao_obj=new LoginPageDao();
	 return dao_obj.returnDataTrainer();
	}



}
