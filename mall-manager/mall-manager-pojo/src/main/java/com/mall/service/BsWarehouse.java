package com.mall.service;

public class BsWarehouse {
    private int wareID;
    private String wType;
    private String wAddress;
    private String wSize;

    public BsWarehouse(int wareID, String wType, String wAddress, String wSize) {
        this.wareID = wareID;
        this.wType = wType;
        this.wAddress = wAddress;
        this.wSize = wSize;
    }

    public int getWareID() {
        return wareID;
    }

    public void setWareID(int wareID) {
        this.wareID = wareID;
    }

    public String getwType() {
        return wType;
    }

    public void setwType(String wType) {
        this.wType = wType;
    }

    public String getwAddress() {
        return wAddress;
    }

    public void setwAddress(String wAddress) {
        this.wAddress = wAddress;
    }

    public String getwSize() {
        return wSize;
    }

    public void setwSize(String wSize) {
        this.wSize = wSize;
    }

    @Override
    public String toString() {
        return "BsWarehouse{" +
                "wareID=" + wareID +
                ", wType='" + wType + '\'' +
                ", wAddress='" + wAddress + '\'' +
                ", wSize='" + wSize + '\'' +
                '}';
    }
}
