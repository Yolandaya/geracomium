package com.ptu.gera.controller;

import com.google.gson.Gson;
import com.ptu.gera.dto.OrderDto;
import com.ptu.gera.entity.*;
import com.ptu.gera.service.UserOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
public class UserOrderController {
    @Autowired
    private UserOrderService orderService;

    public UserOrderService getOrderService() {
        return orderService;
    }

    public void setOrderService(UserOrderService orderService) {
        this.orderService = orderService;
    }
    //查询用户与预约医生
    @RequestMapping("/setdoctor")
    public String setdoctor(Model model){
        List<Userdoctor> doctor=orderService.setdoctor();
        model.addAttribute("userdoctor",doctor);
        return "doctorinfo";
    }
    //查询用户与预约陪护
    @RequestMapping("/setaccompany")
    public String setaccompany(Model model){
        List<Useraccompany> accompany=orderService.setaccompany();
        model.addAttribute("useraccompany",accompany);
        return "accompanyinfo";
    }
    //查询用户与预约订餐
    @RequestMapping("/setfoodm")
    public String setfoodm(Model model){
        Integer time=0;
        List<Userfood> foods=orderService.setfood(time);
        model.addAttribute("foods",foods);
        return "foodm";
    }
    @RequestMapping("/setfoodp")
    public String setfoodp(Model model){
        Integer time=1;
        List<Userfood> foods=orderService.setfood(time);
        model.addAttribute("foods",foods);
        return "foodp";
    }
    @RequestMapping("/setfoodn")
    public String setfoodn(Model model){
        Integer time=2;
        List<Userfood> foods=orderService.setfood(time);
        model.addAttribute("foods",foods);

        return "foodn";
    }

    //查询医生与被预约的人数
    @RequestMapping("/getuserdoctor")
    @ResponseBody
    public  void getuserdoctor(HttpServletResponse response){
        //获取对应的商品和数量
        List<OrderDto> list=  orderService.querydoctor();
        //利用gson将list转换成json字符串
        Gson gson=new Gson();
        String json= gson.toJson(list);
        response.setContentType("text/html;charset=utf-8");  //设置响应编码
        PrintWriter out=null;
        try {
            out=response.getWriter();
            out.print(json);
            out.flush();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
  @RequestMapping("/getuseraccompany")
    @ResponseBody
    public  void getuseraccompany(HttpServletResponse response){
        //获取对应的商品和数量
        List<OrderDto> list=  orderService.queryaccompany();
        //利用gson将list转换成json字符串
        Gson gson=new Gson();
        String json= gson.toJson(list);
        response.setContentType("text/html;charset=utf-8");  //设置响应编码
        PrintWriter out=null;
        try {
            out=response.getWriter();
            out.print(json);
            out.flush();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
    @RequestMapping("/getuserfood")
    @ResponseBody
    public  void getuserfood(HttpServletResponse response){
        //获取对应的商品和数量
        Integer time=0;
        List<OrderDto> list=  orderService.queryfood(time);
        System.out.println(list);
        //利用gson将list转换成json字符串
        Gson gson=new Gson();
        String json= gson.toJson(list);
        response.setContentType("text/html;charset=utf-8");  //设置响应编码
        PrintWriter out=null;
        try {
            out=response.getWriter();
            out.print(json);
            out.flush();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
    @RequestMapping("/getuserfoodn")
    @ResponseBody
    public  void getuserfoodn(HttpServletResponse response){
        //获取对应的商品和数量
        Integer time=1;
        List<OrderDto> list=  orderService.queryfood(time);
        System.out.println(list);
        //利用gson将list转换成json字符串
        Gson gson=new Gson();
        String json= gson.toJson(list);
        response.setContentType("text/html;charset=utf-8");  //设置响应编码
        PrintWriter out=null;
        try {
            out=response.getWriter();
            out.print(json);
            out.flush();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
    @RequestMapping("/getuserfoodp")
    @ResponseBody
    public  void getuserfoodp(HttpServletResponse response){
        //获取对应的商品和数量
        Integer time=2;
        List<OrderDto> list=  orderService.queryfood(time);
        System.out.println(list);
        //利用gson将list转换成json字符串
        Gson gson=new Gson();
        String json= gson.toJson(list);
        response.setContentType("text/html;charset=utf-8");  //设置响应编码
        PrintWriter out=null;
        try {
            out=response.getWriter();
            out.print(json);
            out.flush();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}