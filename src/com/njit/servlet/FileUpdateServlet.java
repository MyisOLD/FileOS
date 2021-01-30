package com.njit.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;

/**
 * Servlet implementation class FileUpdateServlet
 */
@WebServlet("/FileUpdateServlet")
public class FileUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FileUpdateServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void destroy() {
		super.destroy();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		String uploadDir = "C:/Users/NOPPC/eclipse-workspace/FileOS/WebContent/upload";
		out.println("上传文件存储目录：" + uploadDir);
		File fUpdateDir = new File(uploadDir);
		if (!fUpdateDir.exists()) {
			if (!fUpdateDir.mkdir()) {
				out.println("无法创建存储目录C:\\Users\\NOPPC\\eclipse-workspace\\FileOS\\WebContent\\upload");
				return;
			}
		}
		if (!DiskFileUpload.isMultipartContent(request)) {
			out.println("只能处理multipart/form-data类型的数据!");
			return;

		}
		DiskFileUpload fu = new DiskFileUpload();
		fu.setSizeMax(1024 * 1024 * 1024);
		fu.setSizeThreshold(1024 * 1024 * 20);
		fu.setHeaderEncoding("utf-8");
		List fileItems = null;
		try {
			fileItems = fu.parseRequest(request);
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			out.println("解析数据时出现如下问题");
			e.printStackTrace(out);
			return;
		}
		Iterator it = fileItems.iterator();
		while (it.hasNext()) {
			FileItem fitem = (FileItem) it.next();
			if (!fitem.isFormField()) {
				try {
					String pathSrc = fitem.getName();
					 if (pathSrc.trim().equals("")) {
						continue;
					}
					int start = pathSrc.lastIndexOf('\\');
					String fileName = pathSrc.substring(start + 1);
					File pathDest = new File(uploadDir, fileName);

					fitem.write(pathDest);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					out.println("存储文件时出现以下问题:");
					e.printStackTrace(out);
					return;
				}
				
				
				finally {
					fitem.delete();
				}
				

			}

		}
		response.sendRedirect("file/upload_list.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	@Override
	public void init() throws ServletException {
		
	}

}
