package com.ptu.gera.entity;

public class Food {
    private Integer food_id;
    private String food_name;
    private String food_img;
    private Integer food_time;
    private String food_intro;
    private String food_evaluate;

    public Integer getFood_id() {
        return food_id;
    }

    public void setFood_id(Integer food_id) {
        this.food_id = food_id;
    }

    public String getFood_name() {
        return food_name;
    }

    public void setFood_name(String food_name) {
        this.food_name = food_name;
    }

    public String getFood_img() {
        return food_img;
    }

    public void setFood_img(String food_img) {
        this.food_img = food_img;
    }

    public Integer getFood_time() {
        return food_time;
    }

    public void setFood_time(Integer food_time) {
        this.food_time = food_time;
    }

    public String getFood_intro() {
        return food_intro;
    }

    public void setFood_intro(String food_intro) {
        this.food_intro = food_intro;
    }

    public String getFood_evaluate() {
        return food_evaluate;
    }

    public void setFood_evaluate(String food_evaluate) {
        this.food_evaluate = food_evaluate;
    }
}
