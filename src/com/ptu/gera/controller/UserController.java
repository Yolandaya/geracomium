package com.ptu.gera.controller;

import com.ptu.gera.dto.UserDto;
import com.ptu.gera.entity.Room;
import com.ptu.gera.entity.User;
import com.ptu.gera.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }
    //登录
    @RequestMapping("/login")
    @ResponseBody
    public void login(String username, String userpwd, HttpServletRequest request, HttpServletResponse response){
        User user= userService.checkLogin(username,userpwd);
        response.setContentType("text/html;charset=utf-8");  //设置响应编码
        PrintWriter out=null;
        try {
            out=response.getWriter();
        } catch (IOException e) {
            e.printStackTrace();
        }
        if(user!=null){
            //登录成功，将登录用户保存在会话session中
            request.getSession().setAttribute("loginuser",user);
            if(user.getUser_id()==0){
            // 提示登录成功，并跳转到管理员页面
            out.print("<script>alert('登录成功！');location.href='userinfo.jsp';</script>");}
            else{
            // 提示登录成功，并跳转到用户页面
                out.print("<script>alert('登录成功！');location.href='home.jsp';</script>");
            }
        }else{
            // 提示登录失败，回退到登录页面
            out.print("<script>alert('用户名或者密码错误，登录失败');history.go(-1);</script>");
        }
            out.flush();
            out.close();
    }

    //退出登录
    @RequestMapping("/loginout")
    @ResponseBody
    public void loginout(HttpServletRequest request,HttpServletResponse response){
     //注销会话
        request.getSession().invalidate();
        response.setContentType("text/html;charset=utf-8");  //设置响应编码
        PrintWriter out=null;
        try {
            out=response.getWriter();
        } catch (IOException e) {
            e.printStackTrace();
        }
        out.print("<script>alert('退出成功');location.href='index.jsp';</script>");
        out.flush();
        out.close();
    }
    //登记住户
     @RequestMapping("/register")
     @ResponseBody
    public void  register(UserDto dto, HttpServletResponse response, HttpSession session){
         response.setContentType("text/html;charset=utf-8");  //设置响应编码
         PrintWriter out=null;
         try {
             out=response.getWriter();
         } catch (IOException e) {
             e.printStackTrace();
         }
         System.out.println(dto.getUser_name()+dto.getUser_pwd());
        if(userService.registerUser(dto)){
              //登记成功，调用一次查询获取登记的用户
            User user= userService.checkLogin(dto.getUser_name(), dto.getUser_pwd());
            session.setAttribute("registeruser",user);
            if(dto.getUser_room()!=null)
            { Integer s=user.getUser_room();
                boolean falt=userService.updataroom(s);}
            out.println("<script>alert('登记成功');location.href='userinfo.jsp';</script>");
          }else{
              //登记失败
            out.print("<script>alert('登记失败');history.go(-1);</script>");
          }
         out.flush();
         out.close();
    }
    //更新住户信息
    @RequestMapping(value="/userupdata")
    @ResponseBody
    public void userupdate(User user,HttpSession session,HttpServletResponse response){
           boolean flag=   userService.saveUserInfo(user);
        response.setContentType("text/html;charset=utf-8");  //设置响应编码
        PrintWriter out=null;
        try {
            out=response.getWriter();
        } catch (IOException e) {
            e.printStackTrace();
        }
        User us=(User) session.getAttribute("userinfo");
        if(user.getUser_room()!= us.getUser_room()){
            Integer r=us.getUser_room();
            System.out.println(r);
            boolean fal=userService.updataroomnull(r);
        }
           if(flag){
               //修改成功，重置当前的session！！！
                User newUser= userService.getUserById(user.getUser_id());
                session.setAttribute("userinfo",newUser);
               if(user.getUser_room()!=null)
               { Integer s=user.getUser_room();
                   boolean falt=userService.updataroom(s);}
               out.println("<script>alert('修改成功');location.href='userupdata.jsp';</script>");
           }else{
               //修改失败
               out.print("<script>alert('修改失败');history.go(-1);</script>");
           }
        out.flush();
        out.close();
    }
    @RequestMapping("/room")
    public String room(HttpSession session){
        Integer id=0;
        List<Room> list= userService.setnullRoom(id);
        session.setAttribute("list",list);
        return "room";
    }
    //用用户名来查询要更新的用户
    @RequestMapping("/infoupdata")
    public String infoupdata(String username,HttpSession session){
        User userinfo=userService.userinfodata(username);
        session.setAttribute("userinfo",userinfo);
        return "userupdata";
    }
    //用ID来查询要更新的用户
    @RequestMapping("/infoidupdata")
    public String infouidpdata(Integer id,HttpSession session){
        User userinfo=userService.useridinfodata(id);
        session.setAttribute("userinfo",userinfo);
        return "userupdata";
    }
    //查询用户信息
    @RequestMapping("/setuserinfo")
    public String setuserinfo(Model model) {
        List<User> users = userService.setuser();
        model.addAttribute("infouser", users);
        return "infouser";
    }

}
