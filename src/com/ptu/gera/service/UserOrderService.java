package com.ptu.gera.service;

import com.ptu.gera.dto.OrderDto;
import com.ptu.gera.entity.Food;
import com.ptu.gera.entity.Useraccompany;
import com.ptu.gera.entity.Userdoctor;
import com.ptu.gera.entity.Userfood;

import java.util.List;

public interface UserOrderService {
    List<Userdoctor> setdoctor();
    List<Useraccompany> setaccompany();
    List<Userfood> setfood(Integer time);

    List<OrderDto> querydoctor();
    List<OrderDto> queryaccompany();
    List<OrderDto> queryfood(Integer time);
}
