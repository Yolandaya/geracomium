package com.ptu.gera.entity;

public class Userdoctor {
    private Integer duser_id;
    private String user_name;
    private Integer ddoctor_id;
    private String doctor_name;
    private String doctor_dir;

    public Integer getDuser_id() {
        return duser_id;
    }

    public void setDuser_id(Integer duser_id) {
        this.duser_id = duser_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public Integer getDdoctor_id() {
        return ddoctor_id;
    }

    public void setDdoctor_id(Integer ddoctor_id) {
        this.ddoctor_id = ddoctor_id;
    }

    public String getDoctor_name() {
        return doctor_name;
    }

    public void setDoctor_name(String doctor_name) {
        this.doctor_name = doctor_name;
    }

    public String getDoctor_dir() {
        return doctor_dir;
    }

    public void setDoctor_dir(String doctor_dir) {
        this.doctor_dir = doctor_dir;
    }
}
