package com.ptu.gera.mapper;

import com.ptu.gera.entity.Accompany;

import java.util.List;

public interface AccompanyMapper {
    List<Accompany> queryAllAccompany();
    boolean insertAccompany(Integer user_id,Integer accomanay_id);
}
