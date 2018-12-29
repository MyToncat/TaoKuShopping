package com.hk.controller;

import com.hk.dao.Categorydao;
import com.hk.domain.Category;
import net.sf.json.JSONArray;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryServlet")
public class CategoryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置乱码，只对get有效
        request.setCharacterEncoding("utf-8");

        response.setContentType("text/html;charset=utf-8");

        Categorydao cd=new Categorydao();
        List<Category> cates=cd.findAllCategory();

        JSONArray cateArray=JSONArray.fromObject(cates);

        response.getWriter().println(cateArray.toString());
    }
}
