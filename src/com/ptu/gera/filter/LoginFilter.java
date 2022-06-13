package com.ptu.gera.filter;


import com.ptu.gera.entity.User;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
              //判断用户是否保存在session
      HttpSession session= ((HttpServletRequest)servletRequest).getSession();
        User user= (User) session.getAttribute("loginuser");
        if(user==null){
            servletResponse.setContentType("text/html;charset=utf-8");
            PrintWriter out= servletResponse.getWriter();
            out.print("<script>alert('请先登录');location.href='index.jsp';</script>");
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
