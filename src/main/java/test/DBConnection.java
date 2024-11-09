package test;
import java.sql.*;

public class DBConnection {
	private static Connection con=null;
	private DBConnection() {}
	static {
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@Localhost:1521:orcl","system","521996");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
	public static Connection getConnection()
	{
		return con;
	}

}
