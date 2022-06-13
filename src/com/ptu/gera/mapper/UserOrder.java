package com.ptu.gera.mapper;

import com.ptu.gera.dto.OrderDto;
import com.ptu.gera.entity.Food;
import com.ptu.gera.entity.Useraccompany;
import com.ptu.gera.entity.Userdoctor;
import com.ptu.gera.entity.Userfood;

import java.util.List;
public interface UserOrder {
    List<Userdoctor> setuserdoctor();
    List<Useraccompany> setuseraccompany();
    List<Userfood> setfood(Integer time);
    boolean infofood(Integer userid,Integer foodid);
    List<OrderDto> querydoctor();
    List<OrderDto> queryaccompany();
    List<OrderDto> queryfood(Integer time);
}
