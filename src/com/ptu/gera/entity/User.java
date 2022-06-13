package com.ptu.gera.entity;

public class User {
   private Integer user_id;
   private String user_name;
   private String user_pwd;
   private Integer user_age;
   private String user_sex;
   private Integer user_room;
   private String user_rela;
   private String user_tel;
   private String user_health;
   private String user_null;

    public Integer getUser_room() {
        return user_room;
    }

    public void setUser_room(Integer user_room) {
        this.user_room = user_room;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_pwd() {
        return user_pwd;
    }

    public void setUser_pwd(String user_pwd) {
        this.user_pwd = user_pwd;
    }

    public String getUser_sex() {
        return user_sex;
    }

    public void setUser_sex(String user_sex) {
        this.user_sex = user_sex;
    }

    public Integer getUser_age() {
        return user_age;
    }

    public void setUser_age(Integer user_age) {
        this.user_age = user_age;
    }

    public String getUser_health() {
        return user_health;
    }

    public void setUser_health(String user_health) {
        this.user_health = user_health;
    }

    public String getUser_tel() {
        return user_tel;
    }

    public void setUser_tel(String user_tel) {
        this.user_tel = user_tel;
    }

    public String getUser_rela() {
        return user_rela;
    }

    public void setUser_rela(String user_rela) {
        this.user_rela = user_rela;
    }

    public String getUser_null() {
        return user_null;
    }

    public void setUser_null(String user_null) {
        this.user_null = user_null;
    }
}
