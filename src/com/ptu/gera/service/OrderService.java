package com.ptu.gera.service;

import com.ptu.gera.entity.Food;

import java.util.List;

public interface OrderService {

    List<Food> getfood(Integer time);
    boolean savefood(Integer userid,Integer foodid);
}
