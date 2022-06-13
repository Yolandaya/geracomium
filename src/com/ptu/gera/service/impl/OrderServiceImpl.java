package com.ptu.gera.service.impl;

import com.ptu.gera.entity.Food;
import com.ptu.gera.mapper.OrderMapper;
import com.ptu.gera.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderMapper orderMapper;

    public OrderMapper getOrderMapper() {
        return orderMapper;
    }
    public void setOrderMapper(OrderMapper orderMapper) {
        this.orderMapper = orderMapper;
    }

    @Override
    public List<Food> getfood(Integer time){
        return orderMapper.getfood(time);
    }
    @Override
    public boolean savefood(Integer userid,Integer foodid){
        return orderMapper.infofood(userid,foodid);
    }
}
