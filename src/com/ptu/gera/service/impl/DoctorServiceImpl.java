package com.ptu.gera.service.impl;

import com.ptu.gera.entity.Doctor;
import com.ptu.gera.mapper.DoctorMapper;
import com.ptu.gera.service.DoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DoctorServiceImpl implements DoctorService{
    @Autowired
    private DoctorMapper doctorMapper;

    public DoctorMapper getDoctorMapper() {
        return doctorMapper;
    }

    public void setDoctorMapper(DoctorMapper doctorMapper) {
        this.doctorMapper = doctorMapper;
    }

    @Override
    public List<Doctor> getAllDoctor() {
        return doctorMapper.queryAllDoctor();
    }
    @Override
    public boolean savedoctor(Integer userid,Integer doctorid) {
        System.out.println(userid + doctorid);
        return doctorMapper.infodoctor(userid,doctorid);

    }
}
