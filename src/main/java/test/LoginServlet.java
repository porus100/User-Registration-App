package test;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
@SuppressWarnings("serial")
@WebServlet("/log")

public class LoginServlet extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		String uN=req.getParameter("uname");
		String pW=req.getParameter("pword");
		UserBean ub=new LoginDAO().login(uN, pW);
		if(ub==null)
		{
			req.setAttribute("msg","Invalid Login Credential's...<br>");
			req.getRequestDispatcher("msg.jsp").forward(req, res);
		}
		else
		{
			Cookie ck=new Cookie("fname", ub.getfName());
			ServletContext sct=req.getServletContext();
			sct.setAttribute("ubean", ub);
			res.addCookie(ck);
			req.getRequestDispatcher("loginSuccess.jsp").forward(req, res);
			
		}
		
	}

}
