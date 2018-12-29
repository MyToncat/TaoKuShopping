package com.hk.controller;

import com.hk.dao.Userdao;
import com.hk.domain.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DoRegist extends HttpServlet {
    private static  final long serialVersionUID=1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //解决乱码
        //request.setCharacterEncoding("UTF-8");
       response.setContentType("text/html;charset=UTF-8");

        String userame=request.getParameter("username");
        userame=new String(userame.getBytes("iso-8859-1"),"utf-8");

        String password=request.getParameter("password");
        String name=request.getParameter("name");
        name=new String(name.getBytes("iso-8859-1"),"utf-8");

        String email=request.getParameter("email");

        String sex=request.getParameter("sex");
        sex=new String(sex.getBytes("iso-8859-1"),"utf-8");

       // System.out.println(userame+password+name+email+sex+"\n");

        //分装数据
        User user=new User();

        user.setUsername(userame);
        user.setPassword(password);
        user.setName(name);
        user.setEmail(email);
        user.setSex(sex);
         Userdao ud=new Userdao();
         int count =ud.add(user);
        //System.out.println(userame+password+name+email+sex);
         if (count>0){
             //response.getWriter().println("chenggong");


             response.getWriter().print(userame+password+name+sex);
             //1:
             String path=request.getContextPath();
             //测试
            // System.out.println(path);
             //拼接路径
            response.sendRedirect(path+"/login.jsp");
             //测试
            // System.out.println(path+"/login.jsp");

             //2:法二;
             //request.getRequestDispatcher("/login.jsp").forward(request,response);
         }
         else{
             response.getWriter().print("shibai");
         }

    }
}
