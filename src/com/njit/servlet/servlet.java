package com.njit.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.njit.service.getCon;

/**
 * Servlet implementation class servlet
 */
@WebServlet(urlPatterns = { "/servlet" }, name = "servlet", displayName = "servlet")
public class servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */

	// public void init() throws ServletException
	// {
	// // 执行必需的初始化
	// }
	public servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		

		String name = request.getParameter("username");
		String pwd = request.getParameter("password");
		String id = request.getParameter("id");

		getCon con = new getCon();

		Connection conn = con.connection();
		ResultSet rs = null;
		PreparedStatement stmt = null;
		try {
			stmt = conn.prepareStatement("select * from " + id + " where username=? and password=?");
			stmt.setString(1, name);
			stmt.setString(2, pwd);

			rs = stmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		boolean flag = false;
		try {
			if (rs.next()) {
				flag = true;
			}
			session.setAttribute("id",id);
			session.setAttribute("user", name);
			conn.close();
			stmt.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (flag == true) {
			response.sendRedirect("main.jsp");
		} else {

			out.print("<script>\r\n" + "	alert(\"无此用户或密码错误\");\r\n" + "	window.location.href='index.jsp';\r\n"
					+ "</script>");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		doGet(request, response);
	}
	// public void destroy()
	// {
	//
	// }
}
