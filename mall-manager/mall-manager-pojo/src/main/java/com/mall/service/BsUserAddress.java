package com.mall.service;

public class BsUserAddress {
    private int addID;
    private int ID;
    private String address;
    private String name;
    private String tel;

    public BsUserAddress() {
    }

    public BsUserAddress(int addID, int ID, String address, String name, String tel) {
        this.addID = addID;
        this.ID = ID;
        this.address = address;
        this.name = name;
        this.tel = tel;
    }

    public int getAddID() {
        return addID;
    }

    public void setAddID(int addID) {
        this.addID = addID;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    @Override
    public String toString() {
        return "BsUserAddress{" +
                "addID='" + addID + '\'' +
                ", ID=" + ID +
                ", address='" + address + '\'' +
                ", name='" + name + '\'' +
                ", tel='" + tel + '\'' +
                '}';
    }
}
