package com.mall.service;

public class BsComStock {
    private String sID;
    private String cID;
    private String colorID;
    private String size;
    private int stock;
    private int wareID;
    private double price;
    private String describe;
    private String picID;

    public BsComStock(String sID, String cID, String colorID, String size, int stock, int wareID, double price, String describe, String picID) {
        this.sID = sID;
        this.cID = cID;
        this.colorID = colorID;
        this.size = size;
        this.stock = stock;
        this.wareID = wareID;
        this.price = price;
        this.describe = describe;
        this.picID = picID;
    }

    @Override
    public String toString() {
        return "BsComStock{" +
                "sID='" + sID + '\'' +
                ", cID='" + cID + '\'' +
                ", colorID='" + colorID + '\'' +
                ", size='" + size + '\'' +
                ", stock='" + stock + '\'' +
                ", wareID='" + wareID + '\'' +
                ", price='" + price + '\'' +
                ", describe='" + describe + '\'' +
                ", picID='" + picID + '\'' +
                '}';
    }

    public String getsID() {
        return sID;
    }

    public void setsID(String sID) {
        this.sID = sID;
    }

    public String getcID() {
        return cID;
    }

    public void setcID(String cID) {
        this.cID = cID;
    }

    public String getColorID() {
        return colorID;
    }

    public void setColorID(String colorID) {
        this.colorID = colorID;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getWareID() {
        return wareID;
    }

    public void setWareID(int wareID) {
        this.wareID = wareID;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getPicID() {
        return picID;
    }

    public void setPicID(String picID) {
        this.picID = picID;
    }
}
