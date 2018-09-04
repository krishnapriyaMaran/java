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

public class LoginDao {
	
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


	
	
}
