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


public class ProductDetailServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String pid=request.getParameter("pid");
        pid=new String(pid.getBytes("iso-8859-1"),"utf-8");
        String cid=request.getParameter("cid");
        String cname=request.getParameter("cname");
        cname=new String(cname.getBytes("iso-8859-1"),"utf-8");

        Productdao pd=new Productdao();
        Product product=pd.findProductByPid(pid,cid,cname);

        HttpSession session =request.getSession();
        session.setAttribute("product",product);
        response.sendRedirect(request.getContextPath()+"/product_info.jsp");

    }
}
