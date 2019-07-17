package com.mall.manager.pojo;

public class BSCommodity {

    public BSCommodity(){}

    private String c_id;
    private String type_id;
    private String mat_ID;
    private String brand_ID;
    private String edition;
    private String c_date;
    private String c_describe;

    public String getC_id() {
        return c_id;
    }

    public void setC_id(String c_id) {
        this.c_id = c_id;
    }

    public String getType_id() {
        return type_id;
    }

    public void setType_id(String type_id) {
        this.type_id = type_id;
    }

    public String getMat_ID() {
        return mat_ID;
    }

    public void setMat_ID(String mat_ID) {
        this.mat_ID = mat_ID;
    }

    public String getBrand_ID() {
        return brand_ID;
    }

    public void setBrand_ID(String brand_ID) {
        this.brand_ID = brand_ID;
    }

    public String getEdition() {
        return edition;
    }

    public void setEdition(String edition) {
        this.edition = edition;
    }

    public String getC_date() {
        return c_date;
    }

    public void setC_date(String c_date) {
        this.c_date = c_date;
    }

    public String getC_describe() {
        return c_describe;
    }

    public void setC_describe(String c_describe) {
        this.c_describe = c_describe;
    }

    @Override
    public String toString() {
        return "BSCommodity{" +
                "c_id='" + c_id + '\'' +
                ", type_id='" + type_id + '\'' +
                ", mat_ID='" + mat_ID + '\'' +
                ", brand_ID='" + brand_ID + '\'' +
                ", edition='" + edition + '\'' +
                ", c_date='" + c_date + '\'' +
                ", c_describe='" + c_describe + '\'' +
                '}';
    }
}
