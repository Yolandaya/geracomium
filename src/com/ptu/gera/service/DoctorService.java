package com.ptu.gera.service;

import com.ptu.gera.entity.Doctor;

import java.util.List;

public interface DoctorService {

     List<Doctor> getAllDoctor();
     //选择医生的业务逻辑
     boolean savedoctor(Integer userid,Integer doctorid);
}
