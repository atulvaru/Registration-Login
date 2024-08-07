package com.wipro;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/registerPage")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();

		String myname = req.getParameter("name");
		String myemail = req.getParameter("email");
		String mypassword = req.getParameter("password");

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration_demo", "root",
					"root");
			PreparedStatement ps = con
					.prepareStatement("INSERT INTO register (name, email, password) VALUES (?, ?, ?)");
			ps.setString(1, myname);
			ps.setString(2, myemail);
			ps.setString(3, mypassword);

			int count = ps.executeUpdate();
			if (count > 0) {
				out.print("<h3 style='color:green'> User registered successfully </h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
				rd.include(req, resp);
			}
		} catch (Exception e) {
			e.printStackTrace();
			out.print("<h3 style='color:red'> Exception Occurred: " + e.getMessage() + " </h3>");
			RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
			rd.include(req, resp);
		} finally {
			out.close();
		}
	}
}
