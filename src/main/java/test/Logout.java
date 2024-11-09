package test;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@SuppressWarnings("serial")
@WebServlet("/logout")
public class Logout extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		Cookie[]ck=req.getCookies();
		if(ck==null)
		{
			req.setAttribute("msg", "Sorry!Session Expired...<br>");
			req.getRequestDispatcher("msg.jsp").forward(req, res);
		}
		else
		{
			ServletContext sct=req.getServletContext();
			sct.removeAttribute("ubean");
			ck[0].setMaxAge(0);
			res.addCookie(ck[0]);
			req.getRequestDispatcher("logout.jsp").forward(req, res);
			
		}
	}

}
