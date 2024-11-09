package test;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.*;

@SuppressWarnings("serial")
@WebServlet("/reg")


public class RegisterServlet extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		UserBean ub=new UserBean();
		ub.setuName(req.getParameter("uname"));
		ub.setpWord(req.getParameter("pword"));
		ub.setfName(req.getParameter("fname"));
		ub.setlName(req.getParameter("lname"));
		ub.setCity(req.getParameter("city"));
		ub.setmId(req.getParameter("mid"));
		ub.setPhno(Long.parseLong(req.getParameter("phno")));
		
		int k=new RegisterDAO().insert(ub);
		if(k>0)
		{
			req.setAttribute("msg", "<h2>User Registered Successfully...!</h2><br>");
			req.getRequestDispatcher("RegSuccess.jsp").forward(req, res);
		}
		else
		{
			req.setAttribute("msg", "<h2>User Registered failed...!</h2><br>");
			req.getRequestDispatcher("RegSuccess.jsp").forward(req, res);
			}
		
		
		
	}
	

}
