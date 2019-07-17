package com.mall;

public class Order {
    private String goodsName;
    private double singlePrice;
    private int goodsNum;
    private double totalPrice;
    private String state;

    public Order() {
    }

    public Order(String goodsName, double singlePrice, int goodsNum, double totalPrice, String state) {
        this.goodsName = goodsName;
        this.singlePrice = singlePrice;
        this.goodsNum = goodsNum;
        this.totalPrice = totalPrice;
        this.state = state;
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

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "Order{" +
                "goodsName='" + goodsName + '\'' +
                ", singlePrice=" + singlePrice +
                ", goodsNum=" + goodsNum +
                ", totalPrice=" + totalPrice +
                ", state='" + state + '\'' +
                '}';
    }
}
