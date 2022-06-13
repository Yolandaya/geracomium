package com.ptu.gera.entity;

public class Userfood {
    private Integer fuser_id;
    private String user_name;
    private Integer ffood_id;
    private String food_name;
    private Integer food_time;

    public Integer getFuser_id() {
        return fuser_id;
    }

    public void setFuser_id(Integer fuser_id) {
        this.fuser_id = fuser_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public Integer getFfood_id() {
        return ffood_id;
    }

    public void setFfood_id(Integer ffood_id) {
        this.ffood_id = ffood_id;
    }

    public String getFood_name() {
        return food_name;
    }

    public void setFood_name(String food_name) {
        this.food_name = food_name;
    }

    public Integer getFood_time() {
        return food_time;
    }

    public void setFood_time(Integer food_time) {
        this.food_time = food_time;
    }
}
