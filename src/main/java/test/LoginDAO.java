package test;
import java.sql.*;

public class LoginDAO {
	public UserBean ub=null;
	public UserBean login(String uN,String pW)
	{
		try {
			Connection con=DBConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("select *from Registration67 where uname=? and "
					+ "pwd=?");
			ps.setString(1, uN);
			ps.setString(2, pW);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				ub=new UserBean();
				ub.setuName(rs.getString(1));
				ub.setpWord(rs.getString(2));
				ub.setfName(rs.getString(3));
				ub.setlName(rs.getString(4));
				ub.setCity(rs.getString(5));
				ub.setmId(rs.getString(6));
				ub.setPhno(rs.getLong(7));
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ub;
	}
	

}