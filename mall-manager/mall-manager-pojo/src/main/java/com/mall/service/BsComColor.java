package com.mall.service;

public class BsComColor {
    private String colorID;
    private String describe;

    public BsComColor(String colorID, String describe) {
        this.colorID = colorID;
        this.describe = describe;
    }

    @Override
    public String toString() {
        return "BsComColor{" +
                "colorID='" + colorID + '\'' +
                ", describe='" + describe + '\'' +
                '}';
    }

    public String getColorID() {
        return colorID;
    }

    public void setColorID(String colorID) {
        this.colorID = colorID;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }
}
