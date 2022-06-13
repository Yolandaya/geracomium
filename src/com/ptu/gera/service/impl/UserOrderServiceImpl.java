package com.ptu.gera.service.impl;

import com.ptu.gera.dto.OrderDto;
import com.ptu.gera.entity.Food;
import com.ptu.gera.entity.Useraccompany;
import com.ptu.gera.entity.Userdoctor;
import com.ptu.gera.entity.Userfood;
import com.ptu.gera.mapper.UserOrder;
import com.ptu.gera.service.UserOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserOrderServiceImpl implements UserOrderService {
    @Autowired
    private UserOrder order;

    public UserOrder getOrder() {
        return order;
    }

    public void setOrder(UserOrder order) {
        this.order = order;
    }
    @Override
    public List<Userdoctor> setdoctor(){
        return order.setuserdoctor();
    }
    @Override
    public List<Useraccompany> setaccompany(){
        return order.setuseraccompany();
    }
    @Override
    public List<Userfood> setfood(Integer time){
        return order.setfood(time);
    }


    @Override
    public List<OrderDto> querydoctor(){
        return order.querydoctor();
    }
    @Override
    public List<OrderDto> queryaccompany(){
        return order.queryaccompany();
    }
    @Override
    public List<OrderDto> queryfood(Integer time){
        return order.queryfood(time);
    }
}
