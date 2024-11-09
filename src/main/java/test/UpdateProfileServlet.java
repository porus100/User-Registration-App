package test;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@SuppressWarnings("serial")
@WebServlet("/update")

public class UpdateProfileServlet extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		Cookie []ck=req.getCookies();
		if(ck==null)
		{
			req.setAttribute("msg","Sorry! Session Expired...<br>");
			req.getRequestDispatcher("msg.jsp").forward(req, res);
		}
		else
		{
			String fN=ck[0].getValue();
			req.setAttribute("fname", fN);
			ServletContext sc=req.getServletContext();
			UserBean ub=(UserBean)sc.getAttribute("ubean");
			ub.setCity(req.getParameter("city"));
			ub.setmId(req.getParameter("mid"));
			ub.setPhno(Long.parseLong(req.getParameter("phno")));
			int k=new UpdateProfileDAO().update(ub);
			if(k>0)
			{
				req.setAttribute("msg", "<b>Profile Updated Successfully...!</b><br>");
				req.getRequestDispatcher("UpdateProfile.jsp").forward(req, res);
			}
			
			
			
		}
	}

}
