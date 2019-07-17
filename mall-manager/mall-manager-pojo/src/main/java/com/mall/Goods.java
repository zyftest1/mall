package com.mall;

public class Goods {
    private String goodsName;
    private double price;
    private String imgUrl;

    public Goods() {
    }

    public Goods(String goodsName, double price, String imgUrl) {
        this.goodsName = goodsName;
        this.price = price;
        this.imgUrl = imgUrl;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "goodsName='" + goodsName + '\'' +
                ", price=" + price +
                ", imgUrl='" + imgUrl + '\'' +
                '}';
    }
}
