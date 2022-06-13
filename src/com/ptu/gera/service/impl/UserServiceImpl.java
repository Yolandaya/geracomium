package com.ptu.gera.service.impl;

import com.ptu.gera.dto.UserDto;
import com.ptu.gera.entity.Room;
import com.ptu.gera.entity.User;
import com.ptu.gera.mapper.UserMapper;
import com.ptu.gera.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired           //从spring容器中取出userMapper的实现类
     private UserMapper mapper;

    public UserMapper getMapper() {
        return mapper;
    }

    public void setMapper(UserMapper mapper) {
        this.mapper = mapper;
    }


    @Override
    public User checkLogin(String name, String pwd) {
        //做业务逻辑判断
        if(name==null||pwd==null||"".equals(name)||"".equals(pwd)){
            return null;
        }else{
          return  mapper.queryUserByNameAndPwd(name,pwd);
        }
    }

    @Override
    public boolean registerUser(UserDto dto) {
        if(dto.getUser_name()==null||dto.getUser_pwd()==null||"".equals(dto.getUser_name())||"".equals(dto.getUser_pwd())){
            return false;
        }else{
            return mapper.addUser(dto);
        }
    }

    @Override
    public boolean saveUserInfo(User user) {
        if(user==null){
            return false;
        }
        return mapper.updateUser(user);
    }

    @Override
    public User getUserById(Integer id) {
        return mapper.queryUserById(id);
    }

    @Override
    public List<Room> setnullRoom(Integer id) {
        return mapper.setRoom(id);
    }
    @Override
    public boolean updataroom(Integer id){
        return mapper.updataroom(id);
    }
    @Override
    public boolean updataroomnull(Integer id){
        return mapper.updataroomnull(id);
    }

    @Override
    public User userinfodata(String name){
        return mapper.userinfoData(name);
    }
    @Override
    public User useridinfodata(Integer id){
        return mapper.useridinfoData(id);
    }

    @Override
    public List<User> setuser(){
        return mapper.setUserInfo();
    }

}
