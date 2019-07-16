package com.mall.service;

public class BsComBrand {
    private String brandID;
    private String describe;
    private String pictureUrl;

    public BsComBrand(String brandID, String describe, String pictureUrl) {
        this.brandID = brandID;
        this.describe = describe;
        this.pictureUrl = pictureUrl;
    }

    @Override
    public String toString() {
        return "BsComBrand{" +
                "brandID='" + brandID + '\'' +
                ", describe='" + describe + '\'' +
                ", pictureUrl='" + pictureUrl + '\'' +
                '}';
    }

    public String getBrandID() {
        return brandID;
    }

    public void setBrandID(String brandID) {
        this.brandID = brandID;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getPictureUrl() {
        return pictureUrl;
    }

    public void setPictureUrl(String pictureUrl) {
        this.pictureUrl = pictureUrl;
    }
}
