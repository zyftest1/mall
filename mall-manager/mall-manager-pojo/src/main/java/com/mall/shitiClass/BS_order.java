package com.mall.shitiClass;

import java.util.Date;

public class BS_order {
    private String o_ID;
    private String o_name;
    private String o_address;
    private String o_tel;
    private String sch_ID;
    private int user_ID;
    private String user_tel;
    private String s_ID;
    private int o_price;
    private int quantity;
    private Date o_date;

    public BS_order() {
    }

    public BS_order(String o_ID, String o_name, String o_address, String o_tel, String sch_ID, int user_ID, String user_tel, String s_ID, int o_price, int quantity, Date o_date) {
        this.o_ID = o_ID;
        this.o_name = o_name;
        this.o_address = o_address;
        this.o_tel = o_tel;
        this.sch_ID = sch_ID;
        this.user_ID = user_ID;
        this.user_tel = user_tel;
        this.s_ID = s_ID;
        this.o_price = o_price;
        this.quantity = quantity;
        this.o_date = o_date;
    }

    public String getO_ID() {
        return o_ID;
    }

    public void setO_ID(String o_ID) {
        this.o_ID = o_ID;
    }

    public String getO_name() {
        return o_name;
    }

    public void setO_name(String o_name) {
        this.o_name = o_name;
    }

    public String getO_address() {
        return o_address;
    }

    public void setO_address(String o_address) {
        this.o_address = o_address;
    }

    public String getO_tel() {
        return o_tel;
    }

    public void setO_tel(String o_tel) {
        this.o_tel = o_tel;
    }

    public String getSch_ID() {
        return sch_ID;
    }

    public void setSch_ID(String sch_ID) {
        this.sch_ID = sch_ID;
    }

    public int getUser_ID() {
        return user_ID;
    }

    public void setUser_ID(int user_ID) {
        this.user_ID = user_ID;
    }

    public String getUser_tel() {
        return user_tel;
    }

    public void setUser_tel(String user_tel) {
        this.user_tel = user_tel;
    }

    public String getS_ID() {
        return s_ID;
    }

    public void setS_ID(String s_ID) {
        this.s_ID = s_ID;
    }

    public int getO_price() {
        return o_price;
    }

    public void setO_price(int o_price) {
        this.o_price = o_price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Date getO_date() {
        return o_date;
    }

    public void setO_date(Date o_date) {
        this.o_date = o_date;
    }

    @Override
    public String toString() {
        return "BS_order{" +
                "o_ID='" + o_ID + '\'' +
                ", o_name='" + o_name + '\'' +
                ", o_address='" + o_address + '\'' +
                ", o_tel='" + o_tel + '\'' +
                ", sch_ID='" + sch_ID + '\'' +
                ", user_ID=" + user_ID +
                ", user_tel='" + user_tel + '\'' +
                ", s_ID='" + s_ID + '\'' +
                ", o_price=" + o_price +
                ", quantity=" + quantity +
                ", o_date=" + o_date +
                '}';
    }
}