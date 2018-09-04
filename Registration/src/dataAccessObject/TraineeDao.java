package dataAccessObject;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import valueObject.Variables;

public class TraineeDao {

	String msg;
	
	
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
			System.out.println(vo_obj.getTrainee());
			String strSelect = "select topics from course where technology=(select domain from batch_register where trainee_id='"+vo_obj.getTrainee() +"') ";
			rset = stmt.executeQuery(strSelect);        
        	
			while(rset.next())
        	 {
 				Variables var_obj=new Variables();		
 				
 				var_obj.setTrainer_id(rset.getString("topics"));
 			     Details_CourseList.add(var_obj);
     				
			}
			
			for (Variables user :Details_CourseList )
			{
				System.out.println(user);
			}
			
			
		}
			catch (SQLException e1) {
				System.out.println(e1.getMessage());
			}
		return Details_CourseList;
	}
}
