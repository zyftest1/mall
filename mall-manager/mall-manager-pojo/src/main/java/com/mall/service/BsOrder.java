package com.mall.service;

import java.util.Date;

public class BsOrder {
    private String oID;
    private String oName;
    private String oAddress;
    private String oTel;
    private int schID;
    private int ID;
    private String tel;
    private String sID;
    private double price;
    private int quantity;
    private Date oDate;

    public BsOrder(String oID, String oName, String oAddress, String oTel, int schID, int ID, String tel, String sID, double price, int quantity, Date oDate) {
        this.oID = oID;
        this.oName = oName;
        this.oAddress = oAddress;
        this.oTel = oTel;
        this.schID = schID;
        this.ID = ID;
        this.tel = tel;
        this.sID = sID;
        this.price = price;
        this.quantity = quantity;
        this.oDate = oDate;
    }

    public String getoID() {
        return oID;
    }

    public void setoID(String oID) {
        this.oID = oID;
    }

    public String getoName() {
        return oName;
    }

    public void setoName(String oName) {
        this.oName = oName;
    }

    public String getoAddress() {
        return oAddress;
    }

    public void setoAddress(String oAddress) {
        this.oAddress = oAddress;
    }

    public String getoTel() {
        return oTel;
    }

    public void setoTel(String oTel) {
        this.oTel = oTel;
    }

    public int getSchID() {
        return schID;
    }

    public void setSchID(int schID) {
        this.schID = schID;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
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

    public Date getoDate() {
        return oDate;
    }

    public void setoDate(Date oDate) {
        this.oDate = oDate;
    }

    @Override
    public String toString() {
        return "BsOrder{" +
                "oID='" + oID + '\'' +
                ", oName='" + oName + '\'' +
                ", oAddress='" + oAddress + '\'' +
                ", oTel='" + oTel + '\'' +
                ", schID=" + schID +
                ", ID=" + ID +
                ", tel='" + tel + '\'' +
                ", sID='" + sID + '\'' +
                ", price=" + price +
                ", quantity=" + quantity +
                ", oDate=" + oDate +
                '}';
    }
}
