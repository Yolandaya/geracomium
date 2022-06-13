package com.ptu.gera.service;

import com.ptu.gera.entity.Accompany;

import java.util.List;

public interface AccompanyService {
    List<Accompany> queryAllAccompany();
    boolean insertAccompany(Integer user_id,Integer accomanay_id);
}
