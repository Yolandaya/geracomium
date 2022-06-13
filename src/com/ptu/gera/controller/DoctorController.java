package com.ptu.gera.controller;


import com.ptu.gera.entity.Doctor;
import com.ptu.gera.service.DoctorService;
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
public class DoctorController {

    @Autowired
    private DoctorService doctorService;

    public DoctorService getDoctorService() {
        return doctorService;
    }

    public void setDoctorService(DoctorService doctorService) {
        this.doctorService = doctorService;
    }

    @RequestMapping("/getDoctor")
    public String getDoctor(Model model){
        //获取所有医生
        List<Doctor> list=doctorService.getAllDoctor();
        model.addAttribute("list",list);
        //转发到doctor.jsp页面
        return "doctor";
    }
    @RequestMapping("/orderdoctor")
    @ResponseBody
    public void orderdoctor(Integer userid,Integer doctorid,HttpServletResponse response){
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=null;
        try {
            out = response.getWriter();
        } catch (IOException e){
            e.printStackTrace();
        }
        System.out.println(userid + doctorid);
        if (doctorService.savedoctor(userid,doctorid)){
            out.println("<script>alert('选择成功');location.href='getDoctor.do';</script>");
        }

    }

}
