package com.mall.service;

public class BsComPicture {
    private String picID;
    private String describe;
    private String url;

    public BsComPicture(String picID, String describe, String url) {
        this.picID = picID;
        this.describe = describe;
        this.url = url;
    }

    @Override
    public String toString() {
        return "BsComPicture{" +
                "picID='" + picID + '\'' +
                ", describe='" + describe + '\'' +
                ", url='" + url + '\'' +
                '}';
    }

    public String getPicID() {
        return picID;
    }

    public void setPicID(String picID) {
        this.picID = picID;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
