package com.ptu.gera.service;

import com.ptu.gera.dto.UserDto;
import com.ptu.gera.entity.Room;
import com.ptu.gera.entity.User;
import com.ptu.gera.entity.Useraccompany;

import java.util.List;

public interface UserService {
     //登录的业务逻辑
     User checkLogin(String name,String pwd);
     // 注册的业务逻辑
     boolean registerUser(UserDto dto);
     // 保存用户个人信息修改的业务逻辑
     boolean saveUserInfo(User user);
     //获取对应id的用户
     User getUserById(Integer id);

     List<Room> setnullRoom(Integer id);

     boolean updataroom(Integer id);
     boolean updataroomnull(Integer id);

     User userinfodata(String name);
     User useridinfodata(Integer id);

     List<User> setuser();
}
