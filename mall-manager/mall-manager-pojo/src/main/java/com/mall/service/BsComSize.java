package com.mall.service;

public class BsComSize {
    private String size;
    private String describe;

    public BsComSize(String size, String describe) {
        this.size = size;
        this.describe = describe;
    }

    @Override
    public String toString() {
        return "BsComSize{" +
                "size='" + size + '\'' +
                ", describe='" + describe + '\'' +
                '}';
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
}
