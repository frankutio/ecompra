

import java.io.IOException;
import main.bean.ClienteBean;
import javax.servlet.ServletException; 
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter; 

public class Main extends HttpServlet { 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException {		
		// reading the user input 
		String txt_login= request.getParameter("txt_login"); 
		String txt_senha = request.getParameter("txt_senha");
		PrintWriter out = response.getWriter();
		out.println ( txt_login );
		
		 
		out.println ( txt_senha );
		out.flush();
		out.close();
		
	
		
		//encaminhando para BEAN
/*		ClienteBean cl_login = new ClienteBean();
		request.setAttribute("txt_login", cl_login);
		out.println(cl_login);*/
		
		
		
	} 
}
	