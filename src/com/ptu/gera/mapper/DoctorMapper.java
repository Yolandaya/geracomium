package com.ptu.gera.mapper;

import com.ptu.gera.entity.Doctor;

import java.util.List;

public interface DoctorMapper {

     List<Doctor> queryAllDoctor();
     boolean infodoctor(Integer userid,Integer doctorid);
}
