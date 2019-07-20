package com.mall.service;

import java.util.Date;

public class BsShoppingCar {
    private int carID;
    private int ID;
    private String bsName;
    private String sID;
    private double price;
    private int quantity;
    private String color;
    private String size;
    private String describe;
    private Date date;
    private String picture;
    private String addID;
    private String address;

    public BsShoppingCar() {
    }

    public BsShoppingCar(int carID, int ID, String bsName, String sID, double price, int quantity, String color, String size, String describe, Date date, String picture, String addID, String address) {
        this.carID = carID;
        this.ID = ID;
        this.bsName = bsName;
        this.sID = sID;
        this.price = price;
        this.quantity = quantity;
        this.color = color;
        this.size = size;
        this.describe = describe;
        this.date = date;
        this.picture = picture;
        this.addID = addID;
        this.address = address;

    }

    public int getCarID() {
        return carID;
    }

    public void setCarID(int carID) {
        this.carID = carID;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getBsName() {
        return bsName;
    }

    public void setBsName(String bsName) {
        this.bsName = bsName;
    }

    public String getsID() {
        return sID;
    }

    public void setsID(String sID) {
        this.sID = sID;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public java.sql.Date getDate() {
        return (java.sql.Date) date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getAddID() {
        return addID;
    }

    public void setAddID(String addID) {
        this.addID = addID;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "BsShoppingCar{" +
                "carID='" + carID + '\'' +
                ", ID=" + ID +
                ", bsName='" + bsName + '\'' +
                ", sID='" + sID + '\'' +
                ", price=" + price +
                ", quantity=" + quantity +
                ", color='" + color + '\'' +
                ", size='" + size + '\'' +
                ", describe='" + describe + '\'' +
                ", date=" + date +
                ", picture='" + picture + '\'' +
                ", addID='" + addID + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
