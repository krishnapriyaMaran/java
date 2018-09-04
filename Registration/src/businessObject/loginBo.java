package businessObject;

import java.util.ArrayList;

import dataAccessObject.LoginDao;
import dataAccessObject.LoginPageDao;
import valueObject.Variables;

public class loginBo {

	
	public ArrayList<Variables> returnData()
	{
	LoginDao dao_obj=new LoginDao();
	 return dao_obj.returnDataLogin();
	}
 
	public String insertRegister(Variables vo_obj)
	{
		LoginPageDao dao_obj=new LoginPageDao();
		return dao_obj.insertRegisterEmployee(vo_obj);
	}

	
	
}
