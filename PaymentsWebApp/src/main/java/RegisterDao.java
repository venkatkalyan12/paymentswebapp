
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class RegisterDao {
	
	
 private String dburl="jdbc:mysql://localhost:3306/userdb";
 private String dbUname="root";
 private String dbPassword="9490";
 private String dbDriver="com.mysql.cj.jdbc.Driver";
 
 public void loadDriver(String dbDriver)
 {
	 try {
		Class.forName(dbDriver);
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
 }
 
 
 public Connection getConnection()
 {
	Connection con=null;
	try {
		con=DriverManager.getConnection(dburl,dbUname,dbPassword);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return con;
 }
 
 
 public String insert(Member member)
 {
	 loadDriver(dbDriver);
	 Connection con=getConnection();
	 String result="Registered Successfully";
	 String sql="insert into member values(?,?,?,?,?)";
	 
	 PreparedStatement ps;
	try {
		ps = con.prepareStatement(sql);
	

	 ps.setString(1,member.getUname());
	 ps.setString(2,member.getDateOfBirth());
	 ps.setString(3,member.getPhone());
	 ps.setString(4,member.getEmail());
	 ps.setString(5,member.getPassword());
	 ps.executeUpdate();
	 
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		result="Registeration fail";
	}
	return result; 
 }
}
 

