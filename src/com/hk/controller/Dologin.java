package com.hk.controller;

import com.hk.dao.Userdao;
import com.hk.domain.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class Dologin extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        HttpSession session=request.getSession();
        String username=request.getParameter("username");
      //  username=new String(username.getBytes("iso-8859-1"),"utf-8");

        String password=request.getParameter("password");
      //  password=new String(password.getBytes("iso-8859-1"),"utf-8");
       // System.out.println(username+" "+password);

        Userdao ud=new Userdao();
        User user=new User();
        user.setUsername(username);
        user.setPassword(password);
       /* System.out.println("password:"+password);
        System.out.println("username:"+username);*/
        User u=ud.find(user);
       /* System.out.println(u.getUsername());*/
        if (u!=null){
            //成功
            session.setAttribute("user",u);
            response.sendRedirect(request.getContextPath()+"/index.jsp");
        }
        else{
            //失败
            response.sendRedirect(request.getContextPath()+"/login.jsp");
        }

    }
}
