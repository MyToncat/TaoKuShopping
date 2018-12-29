package com.hk.controller;

import com.hk.dao.Productdao;
import com.hk.domain.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class ProductNewServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Productdao pd =new Productdao();
        List<Product>products=pd.findProductNew();

        HttpSession session=request.getSession();
        session.setAttribute("newproducts",products);

        response.sendRedirect(request.getContextPath()+"/index.jsp");
    }
}
