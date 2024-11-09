package test;
import java.sql.*;

public class UpdateProfileDAO {
	public int k=0;
	public int update(UserBean ub)
	{
		try
		{
			Connection con=DBConnection.getConnection();
			PreparedStatement ps=con.prepareStatement
					("update Registration67 set city=?,email=?,phno=? where uname=? and pwd=?" );
			ps.setString(1, ub.getCity());
			ps.setString(2, ub.getmId());
			ps.setLong(3, ub.getPhno());
			ps.setString(4, ub.getuName());
			ps.setString(5, ub.getpWord());
			k=ps.executeUpdate();
			
		}
		catch(Exception e)
		{
		e.printStackTrace();	
		}
		return k;
	}

}
