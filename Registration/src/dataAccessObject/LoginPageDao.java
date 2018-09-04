package dataAccessObject;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import valueObject.Variables;

public class LoginPageDao {
	
	String msg;	
				public ArrayList<Variables> returnDataLogin() {
					Connection con = null;
					Statement stmt = null;
					ResultSet rset = null;
					ArrayList<Variables> DetailsList=new ArrayList<>();
					try {
						Driver driver = new com.mysql.jdbc.Driver();
						DriverManager.registerDriver(driver);
						con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration", "root", "");
						stmt = con.createStatement();
						String strSelect = "select employee_id,password,role from register";
						rset = stmt.executeQuery(strSelect);              
		            	 
		            	 while(rset.next())
		            	 {
		     				Variables var_obj=new Variables();		
		     				
		     	            var_obj.setLoginName(rset.getString("employee_id"));
		     	            var_obj.setPassWord(rset.getString("password"));
		     	            var_obj.setRole(rset.getString("role"));
		     	            DetailsList.add(var_obj);
		     				
		             }
		             
		            	 
					
					} catch (SQLException e) {
						System.out.println(e.getMessage());
					}
					
					return DetailsList;
				}



				
				
				public String insertBatchRegister(Variables vo_obj){
					Connection conn = null;
					PreparedStatement stmt = null;
				    System.out.println("value inserted");
					try {
						Driver driver = new com.mysql.jdbc.Driver();
						DriverManager.registerDriver(driver);
						conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration", "root", "");
						
						String strSelect="insert into batch_register values(?,?,?,?,?,?,?,?)";
						stmt = 	conn.prepareStatement(strSelect);
						stmt.setString(1, vo_obj.getBatch_code());
						stmt.setInt(2,vo_obj.getStrength());
						stmt.setString(3,vo_obj.getDomain());
					    stmt.setString(4, vo_obj.getStart_date());
						stmt.setString(5,vo_obj.getEnd_date());
						stmt.setString(6, vo_obj.getTrainer_id());
						stmt.setString(7, vo_obj.getBatch_owner_name());
						stmt.setString(8,vo_obj.getTrainee_id());
						stmt.executeUpdate();
						
						
					msg="success";
						
					} 
					catch (SQLException e1) {
						System.out.println(e1.getMessage());
					}
					return msg;
					
				}


            
            
            
        	public String insertRegisterEmployee(Variables vo_obj){
				Connection conn = null;
				PreparedStatement stmt = null;
			    System.out.println("value inserted");
				try {
					Driver driver = new com.mysql.jdbc.Driver();
					DriverManager.registerDriver(driver);
					conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration", "root", "");
					
					String strSelect="insert into register values(?,?,?,?,?)";
					stmt = 	conn.prepareStatement(strSelect);
		            stmt.setString(1, vo_obj.getEmployee_id());
		            stmt.setString(2, vo_obj.getUsername());
		            stmt.setString(3,vo_obj.getPassword());
		            stmt.setString(4, vo_obj.getConfirm_password());
		            stmt.setString(5, vo_obj.getRole());
		            
					
		            stmt.executeUpdate();
					
					
					msg="success";
						
					} 
					catch (SQLException e1) {
						System.out.println(e1.getMessage());
					}
					return msg;
					
				}



        	

        	public ArrayList<Variables> returnDataTrainer() {
				Connection con = null;
				Statement stmt = null;
				ResultSet rset = null;
				ArrayList<Variables> Details_trainerList=new ArrayList<>();
				try {
					Driver driver = new com.mysql.jdbc.Driver();
					DriverManager.registerDriver(driver);
					con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration", "root", "");
					stmt = con.createStatement();
					String strSelect = "select * from batch_register";
					rset = stmt.executeQuery(strSelect);              
	            	 
	            	 while(rset.next())
	            	 {
	     				Variables var_obj=new Variables();		
	     				var_obj.setTrainer_id(rset.getString("trainer_id"));
	     				var_obj.setBatch_owner_name(rset.getString("batch_owner_name"));
	     				var_obj.setDomain(rset.getString("domain"));
	     				var_obj.setStart_date(rset.getString("start_date"));
	     				var_obj.setEnd_date(rset.getString("end_date"));
	     				var_obj.setBatch_code(rset.getString("batch_code"));
	     				var_obj.setStrength(rset.getInt("strength"));
	     	             Details_trainerList.add(var_obj);
	     				
	             }
	             
	            	 
				
				} catch (SQLException e) {
					System.out.println(e.getMessage());
				}
				
				return Details_trainerList;
			}



        	public ArrayList<Variables> returnDataDomain(Variables vo_obj) {
				Connection con = null;
				Statement stmt = null;
				ResultSet rset = null;
       System.out.println("in dao");
				ArrayList<Variables> Details_DomainList=new ArrayList<>();
				try {
					Driver driver = new com.mysql.jdbc.Driver();
					DriverManager.registerDriver(driver);
					con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration", "root", "");
					stmt = con.createStatement();
					
					String strSelect = "select *  from batch_register where  domain= '"+vo_obj.getSort_domain()+"' ";
					rset = stmt.executeQuery(strSelect);              
	            	 
	            	 while(rset.next())
	            	 {
	     				Variables var_obj=new Variables();		
	     				var_obj.setTrainer_id(rset.getString("trainer_id"));
	     				var_obj.setBatch_owner_name(rset.getString("batch_owner_name"));
	     				
	     				var_obj.setStart_date(rset.getString("start_date"));
	     				var_obj.setEnd_date(rset.getString("end_date"));
	     				var_obj.setBatch_code(rset.getString("batch_code"));
	     				var_obj.setStrength(rset.getInt("strength"));
	     	             Details_DomainList.add(var_obj);
	     				
	                 }
	             
	            	 
				
				} catch (SQLException e) {
					System.out.println(e.getMessage());
				}
				
				return Details_DomainList;
			}

        	public ArrayList<Variables> returnDataId(Variables vo_obj) {
				Connection con = null;
				Statement stmt = null;
				ResultSet rset = null;
       System.out.println("in dao");
				ArrayList<Variables> Details_IdList=new ArrayList<>();
				try {
					Driver driver = new com.mysql.jdbc.Driver();
					DriverManager.registerDriver(driver);
					con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration", "root", "");
					stmt = con.createStatement();
					
					String strSelect = "select * from batch_register where  trainer_id= '"+vo_obj.getSort_id()+"' ";
					rset = stmt.executeQuery(strSelect);              
	            	 
	            	 while(rset.next())
	            	 {
	     				Variables var_obj=new Variables();		
	     		
	     			
	     				var_obj.setBatch_owner_name(rset.getString("batch_owner_name"));
	     				var_obj.setDomain(rset.getString("domain"));
	     				var_obj.setStart_date(rset.getString("start_date"));
	     				var_obj.setEnd_date(rset.getString("end_date"));
	     				var_obj.setBatch_code(rset.getString("batch_code"));
	     				var_obj.setStrength(rset.getInt("strength"));
	     	            
	     				         Details_IdList.add(var_obj);
	     				
	                 }
	             
	            	 
				
				} catch (SQLException e) {
					System.out.println(e.getMessage());
				}
				
				return Details_IdList;
			}





        	public ArrayList<Variables> returnDataDate(Variables vo_obj) {
				Connection con = null;
				Statement stmt = null;
				ResultSet rset = null;
                System.out.println("in dao");
				ArrayList<Variables> Details_DateList=new ArrayList<>();
				try {
					Driver driver = new com.mysql.jdbc.Driver();
					DriverManager.registerDriver(driver);
					con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration", "root", "");
					stmt = con.createStatement();
					
					String strSelect = "select * from batch_register where  start_date>= '"+vo_obj.getSort_start_date()+"' and end_date<=   '"+vo_obj.getSort_end_date()+"' ";
					rset = stmt.executeQuery(strSelect);              
	            	 
	            	 while(rset.next())
	            	 {
	     				Variables var_obj=new Variables();		
	     		
	     				var_obj.setTrainer_id(rset.getString("trainer_id"));
	     				var_obj.setBatch_owner_name(rset.getString("batch_owner_name"));
	     				var_obj.setDomain(rset.getString("domain"));
	     				var_obj.setStart_date(rset.getString("start_date"));
	     				var_obj.setEnd_date(rset.getString("end_date"));
	     				var_obj.setBatch_code(rset.getString("batch_code"));
	     				var_obj.setStrength(rset.getInt("strength"));
	     	            
	     				     Details_DateList.add(var_obj);
	     				
	                 }
	             
	            	 
				
				} catch (SQLException e) {
					System.out.println(e.getMessage());
				}
				
				return Details_DateList;
			}


        	public ArrayList<Variables> getfeedback(Variables vo_obj){
        		Connection con = null;
				Statement stmt = null;
				ResultSet rset = null;
                System.out.println("in dao");
				ArrayList<Variables> Details_CourseList=new ArrayList<>();
				try {
					Driver driver = new com.mysql.jdbc.Driver();
					DriverManager.registerDriver(driver);
					con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration", "root", "");
					stmt = con.createStatement();
			
					String traineeId=vo_obj.getTrainee();
					System.out.println(traineeId);
					String strSelect = "select topics from course where technology=(select domain from batch_register where trainee_id='"+vo_obj.getTrainee()+"') ";
					System.out.println("the sql query is:"+strSelect);
					rset = stmt.executeQuery(strSelect);        
	            	
					while(rset.next())
	            	 {
	     				Variables var_obj=new Variables();		
	     				
	     				var_obj.setTopics(rset.getString("topics"));
	     			     Details_CourseList.add(var_obj);
		     				
					}
					
					for (Variables user :Details_CourseList )
					{
						System.out.println(user.getTopics());
					}
					
					
				}
					catch (SQLException e1) {
						System.out.println(e1.getMessage());
					}
				return Details_CourseList;
				
}  }