package com.saeyan.controller;

import java.io.File;

import javax.servlet.RequestDispatcher;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saeyan.dao.ProductDAO;
import com.saeyan.dto.ProductVO;

/**
 * Servlet implementation class ProductDeleteServlet
 */
@WebServlet("/productDelete.do")
public class ProductDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String code = request.getParameter("code");		
		ProductDAO productDao = ProductDAO.getInstance();
		ProductVO product = productDao.selectProductByCode(code);
		
		request.setAttribute("product",product);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("product/productDelete.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String code = request.getParameter("code");
		ProductDAO productDao = ProductDAO.getInstance();
		ProductVO product = productDao.selectProductByCode(code);
		String pictureUrl = product.getPictureUrl();
		int result = productDao.deleteProduct(code);		
		if(pictureUrl !=null && result >0) {
			deleteFile(pictureUrl);
		}	
		response.sendRedirect("productList.do");		
	}
	private void deleteFile(String fileName) {		
		String path = getServletContext().getRealPath("upload");
		File file = new File(path,fileName);
		if(file.exists())
			file.delete();
	}

}
