package com.ptu.gera.controller;

import com.ptu.gera.entity.Food;
import com.ptu.gera.service.OrderService;
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
public class OrderController {
    @Autowired
    private OrderService orderService;

    public OrderService getOrderService() {
        return orderService;
    }

    public void setOrderService(OrderService orderService) {
        this.orderService = orderService;
    }
    @RequestMapping("/lunch")
    public String lunch(Model model){
        Integer time=1;
        List<Food> foods=orderService.getfood(time);
        model.addAttribute("foods",foods);
        return "lunch";
    }
    @RequestMapping("/dinner")
    public String dinner(Model model){
        Integer time=2;
        List<Food> foods=orderService.getfood(time);
        model.addAttribute("foods",foods);
        return "dinner";
    }
    @RequestMapping("/breakfast")
    public String breakfast(Model model){
        Integer time=0;
        List<Food> foods=orderService.getfood(time);
        model.addAttribute("foods",foods);
        return "breakfast";
    }
    @RequestMapping("/orderfood")
    @ResponseBody
    public void orderfood(Integer userid, Integer foodid, HttpServletResponse response){
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=null;
        try {
            out = response.getWriter();
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println(userid + foodid);
        if (orderService.savefood(userid,foodid)){
            out.println("<script>alert('点餐成功');location.href='breakfast.do';</script>");
        }
    }
}
