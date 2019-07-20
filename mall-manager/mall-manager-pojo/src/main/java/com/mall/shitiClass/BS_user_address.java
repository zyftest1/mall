package com.mall.shitiClass;

public class BS_user_address {
    private String add_ID;
    private int ID;
    private String r_address;
    private String r_name;
    private String r_tel;

    public BS_user_address() {
    }

    public BS_user_address(String add_ID, int ID, String r_address, String r_name, String r_tel) {
        this.add_ID = add_ID;
        this.ID = ID;
        this.r_address = r_address;
        this.r_name = r_name;
        this.r_tel = r_tel;
    }

    public String getAdd_ID() {
        return add_ID;
    }

    public void setAdd_ID(String add_ID) {
        this.add_ID = add_ID;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getR_address() {
        return r_address;
    }

    public void setR_address(String r_address) {
        this.r_address = r_address;
    }

    public String getR_name() {
        return r_name;
    }

    public void setR_name(String r_name) {
        this.r_name = r_name;
    }

    public String getR_tel() {
        return r_tel;
    }

    public void setR_tel(String r_tel) {
        this.r_tel = r_tel;
    }
}
