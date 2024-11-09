package test;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@SuppressWarnings("serial")
@WebServlet("/edit")
public class EditProfileServlet extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		Cookie[]ck=req.getCookies();
		if(ck==null)
		{
			req.setAttribute("msg","Sorry! Session Expired...<br>");
			req.getRequestDispatcher("msg.jsp").forward(req, res);
		}
		else
		{
			String fN=ck[0].getValue();
			req.setAttribute("fname", fN);
			req.getRequestDispatcher("EditProfile.jsp").forward(req, res);	
		}
	}

}

//Update and Logout is left
