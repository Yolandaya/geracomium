package com.ptu.gera.mapper;

import com.ptu.gera.dto.UserDto;
import com.ptu.gera.entity.Room;
import com.ptu.gera.entity.User;
import com.ptu.gera.entity.Useraccompany;

import java.util.List;

public interface UserMapper {

    User queryUserByNameAndPwd(String name,String pwd);

    boolean addUser(UserDto dto);

    boolean updateUser(User user);

    User queryUserById(Integer id);

    List<Room> setRoom(Integer id);

    boolean updataroom(Integer id);
    boolean updataroomnull(Integer id);

    User userinfoData(String username);

    User useridinfoData(Integer id);

    List<User> setUserInfo();
}
