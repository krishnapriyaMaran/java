package businessObject;

import valueObject.Variables;

import java.util.ArrayList;


import dataAccessObject.LoginPageDao;

public class LoginPageBo {

	
 
 public ArrayList<Variables> returnData()
	{
	LoginPageDao dao_obj=new LoginPageDao();
	 return dao_obj.returnDataLogin();
	}
 
 
 
 
public String batchregister(Variables vo_obj)
{
	LoginPageDao dao_obj=new LoginPageDao();
	return  dao_obj.insertBatchRegister( vo_obj);
}


public String insertRegister(Variables vo_obj)
{
	LoginPageDao dao_obj=new LoginPageDao();
	return dao_obj.insertRegisterEmployee(vo_obj);
}





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



public ArrayList<Variables> DomainDetail(Variables vo_obj)
{  System.out.println("in bo");
LoginPageDao dao_obj=new LoginPageDao();
 return dao_obj.returnDataDomain(vo_obj);
}

public ArrayList<Variables> IdDetail(Variables vo_obj)
{  System.out.println("in bo");
LoginPageDao dao_obj=new LoginPageDao();
 return dao_obj.returnDataId(vo_obj);
}

public ArrayList<Variables> DateDetail(Variables vo_obj)
{  System.out.println("in bo");
LoginPageDao dao_obj=new LoginPageDao();
 return dao_obj.returnDataDate(vo_obj);
}



}


