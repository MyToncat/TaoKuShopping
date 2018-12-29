package com.hk.controller;

import com.hk.dao.Categorydao;
import com.hk.dao.Productdao;
import com.hk.domain.Category;
import com.hk.domain.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class ProductCategoryServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doGet(request,response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        Categorydao cd=new Categorydao();

        String cid =request.getParameter("cid");
        Category category=cd.findCategory(cid);
        Productdao pd=new Productdao();
        List<Product> products=pd.finProductByCid(category);
        //
        request.setAttribute("products",products);
        request.getRequestDispatcher("/product_list.jsp").forward(request,response);

        response.getWriter().print(products.toString());
    }
}
