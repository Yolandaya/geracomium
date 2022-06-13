package com.ptu.gera.controller;

import com.ptu.gera.entity.Accompany;
import com.ptu.gera.entity.User;
import com.ptu.gera.service.AccompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
public class AccompanyController {

    @Autowired
    private AccompanyService accompanyService;

    public AccompanyService getAccompanyService() {
        return accompanyService;
    }

    public void setAccompanyService(AccompanyService accompanyService) {
        this.accompanyService = accompanyService;
    }

    @RequestMapping("/accompany")
    public String queryAllAccompany(Model model) {
        List<Accompany> accoms = accompanyService.queryAllAccompany();
        model.addAttribute("accompany", accoms);
        return "accompany";
    }
    @RequestMapping("/orderaccompany")
    @ResponseBody
    public void insert(Integer accompany_id, HttpSession session, HttpServletResponse response){
        User user= (User) session.getAttribute("loginuser");
        response.setContentType("text/html;charset=utf-8");  //设置响应编码
        PrintWriter out=null;
        try {
            out=response.getWriter();
        } catch (IOException e) {
            e.printStackTrace();
        }
        Integer user_id=user.getUser_id();
        System.out.printf("id"+user_id);
        System.out.printf("id"+accompany_id);
        boolean flag=accompanyService.insertAccompany(user_id,accompany_id);
        out.print("<script>alert('选择成功');location.href='accompany.do';</script>");
    }
}
