
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


	
	public class LoginDao {  
		 public static boolean validate(String email,String password){  
		 boolean status=false;  
		 try{  
		 Class.forName("com.mysql.cj.jdbc.Driver");  
		 Connection con=DriverManager.getConnection(  
		 "jdbc:mysql://localhost:3306/userdb","root","9490");  
		       
		 PreparedStatement ps=con.prepareStatement(  
		 "select * from member where email=? and password=?");  
		 ps.setString(1,email);  
		 ps.setString(2,password);
		       
		 ResultSet rs=ps.executeQuery();  
		 status=rs.next();  
		           
		 }catch(Exception e){System.out.println(e);}  
		 return status;  
		 }  
		 }  
	 


