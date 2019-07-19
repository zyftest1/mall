package com.mall;

public class Order {
    private String goodsName;
    private double singlePrice;
    private int goodsNum;
    private double totalPrice;
    private String state;
    private String sid;
    private String uid;
    private String utel;
    private String oid;

    public Order() {
    }

    public Order(String goodsName, double singlePrice, int goodsNum, double totalPrice, String state,String sid,String uid,String utel,String oid) {
        this.goodsName = goodsName;
        this.singlePrice = singlePrice;
        this.goodsNum = goodsNum;
        this.totalPrice = totalPrice;
        this.state = state;
        this.sid=sid;
        this.uid=uid;
        this.utel=utel;
        this.oid=oid;
    }

    @Override
    public String toString() {
        return "Order{" +
                "goodsName='" + goodsName + '\'' +
                ", singlePrice=" + singlePrice +
                ", goodsNum=" + goodsNum +
                ", totalPrice=" + totalPrice +
                ", state='" + state + '\'' +
                ", sid='" + sid + '\'' +
                ", uid='" + uid + '\'' +
                ", utel='" + utel + '\'' +
                ", oid='" + oid + '\'' +
                '}';
    }

    public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid;
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public double getSinglePrice() {
        return singlePrice;
    }

    public void setSinglePrice(double singlePrice) {
        this.singlePrice = singlePrice;
    }

    public int getGoodsNum() {
        return goodsNum;
    }

    public void setGoodsNum(int goodsNum) {
        this.goodsNum = goodsNum;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getUtel() {
        return utel;
    }

    public void setUtel(String utel) {
        this.utel = utel;
    }

}
