package com.mall.stock;

public class ComStock {
    private String s_id;
    private String c_id;
    private String color_id;
    private String size;
    private int stock;
    private int ware_id;
    private int s_price;
    private String s_describe;


    public ComStock() {
    }

    public ComStock(String s_id, String c_id, String color_id, String size, int stock, int ware_id, int s_price, String s_describe) {
        this.s_id = s_id;
        this.c_id = c_id;
        this.color_id = color_id;
        this.size = size;
        this.stock = stock;
        this.ware_id = ware_id;
        this.s_price = s_price;
        this.s_describe = s_describe;
    }

    public String getS_id() {
        return s_id;
    }

    public void setS_id(String s_id) {
        this.s_id = s_id;
    }

    public String getC_id() {
        return c_id;
    }

    public void setC_id(String c_id) {
        this.c_id = c_id;
    }

    public String getColor_id() {
        return color_id;
    }

    public void setColor_id(String color_id) {
        this.color_id = color_id;
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

    public int getWare_id() {
        return ware_id;
    }

    public void setWare_id(int ware_id) {
        this.ware_id = ware_id;
    }

    public int getS_price() {
        return s_price;
    }

    public void setS_price(int s_price) {
        this.s_price = s_price;
    }

    public String getS_describe() {
        return s_describe;
    }

    public void setS_describe(String s_describe) {
        this.s_describe = s_describe;
    }

    @Override
    public String toString() {
        return "ComStock{" +
                "s_id='" + s_id + '\'' +
                ", c_id='" + c_id + '\'' +
                ", color_id='" + color_id + '\'' +
                ", size='" + size + '\'' +
                ", stock=" + stock +
                ", ware_id=" + ware_id +
                ", s_price=" + s_price +
                ", s_describe='" + s_describe + '\'' +
                '}';
    }
}
