package com.mall.manager.pojo;

public class BScomBrand {
    private String brand_ID;
    private String brand_describe;
    private String pictureurl;

    public String getBrand_ID() {
        return brand_ID;
    }

    public void setBrand_ID(String brand_ID) {
        this.brand_ID = brand_ID;
    }

    public String getBrand_describe() {
        return brand_describe;
    }

    public void setBrand_describe(String brand_describe) {
        this.brand_describe = brand_describe;
    }

    public String getPictureurl() {
        return pictureurl;
    }

    public void setPictureurl(String pictureurl) {
        this.pictureurl = pictureurl;
    }

    @Override
    public String toString() {
        return "BScomBrand{" +
                "brand_ID='" + brand_ID + '\'' +
                ", brand_describe='" + brand_describe + '\'' +
                ", pictureurl='" + pictureurl + '\'' +
                '}';
    }
}
