package com.ptu.gera.service.impl;//package com.ptu.gera.service.impl;


import com.ptu.gera.entity.Accompany;
import com.ptu.gera.mapper.AccompanyMapper;
import com.ptu.gera.service.AccompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AccompanyServiceImpl implements AccompanyService {
   @Autowired
    private AccompanyMapper accom;

    public AccompanyMapper getAccom() {
        return accom;
    }

    public void setAccom(AccompanyMapper accom) {
        this.accom = accom;
    }

    @Override
    public List<Accompany> queryAllAccompany() {
        return accom.queryAllAccompany();
    }
    @Override
    public boolean insertAccompany(Integer user_id, Integer accomanay_id) {
        return accom.insertAccompany(user_id,accomanay_id);
    }
}
