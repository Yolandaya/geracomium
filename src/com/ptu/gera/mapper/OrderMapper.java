package com.ptu.gera.mapper;

import com.ptu.gera.entity.Food;

import java.util.List;

public interface OrderMapper {
    List<Food> getfood(Integer time);
    boolean infofood(Integer userid,Integer foodid);
}
