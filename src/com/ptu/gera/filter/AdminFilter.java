package com.ptu.gera.filter;


import com.ptu.gera.entity.User;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class AdminFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
              //判断用户是否为管理员
      HttpSession session= ((HttpServletRequest)servletRequest).getSession();
        User user= (User) session.getAttribute("loginuser");
        if(user.getUser_id()!=0){
            servletResponse.setContentType("text/html;charset=utf-8");
            PrintWriter out= servletResponse.getWriter();
            out.print("<script>alert('请登管理员账号');location.href='index.jsp';</script>");
            out.flush();
            out.close();
        }else {
            filterChain.doFilter(servletRequest,servletResponse);
        }
    }

    @Override
    public void destroy() {

    }
}
