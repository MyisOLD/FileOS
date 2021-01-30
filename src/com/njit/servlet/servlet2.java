package com.njit.servlet;

import com.njit.service.getCon;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class servlet2
 */
@WebServlet("/servlet2")
public class servlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public servlet2() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		String name = request.getParameter("UserID");
		String pwd = request.getParameter("UserPass");
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		String oldname = (String) session.getAttribute("user");

		getCon con = new getCon();

		Connection conn = con.connection();
		int rs;
		PreparedStatement stmt = null;

		try {
			stmt = conn.prepareStatement("update " + id + " set username=?,password=? where username='" + oldname + "';");
			stmt.setString(1, name);
			stmt.setString(2, pwd);
			rs = stmt.executeUpdate();
			conn.close();
			stmt.close();
			session.invalidate();
			out.print(
					"<script>\r\n" + "	alert(\"\");\r\n" + "	top.location.href='index.jsp';\r\n" + "</script>");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		doGet(request, response);

	}

}
