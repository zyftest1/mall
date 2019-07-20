package com.mall.manager.pojo;

import java.util.Date;

public class Pojo {
    private String o_id;
    private String o_name;
    private String o_address;
    private String o_tel;
    private String sch;
    private int  user_id;
    private String user_tel;
    private String s_id;
    private int o_price;
    private int quantity;
    private Date o_date;
    private int sch_id;


    public int getSch_id() {
        return sch_id;
    }

    public void setSch_id(int sch_id) {
        this.sch_id = sch_id;
    }

    public Pojo() {
    }

    public Pojo(String o_id, String o_name, String o_address, String o_tel, String sch, int user_id, String user_tel, String s_id, int o_price, int quantity, Date o_date) {
        this.o_id = o_id;
        this.o_name = o_name;
        this.o_address = o_address;
        this.o_tel = o_tel;
        this.sch = sch;
        this.user_id = user_id;
        this.user_tel = user_tel;
        this.s_id = s_id;
        this.o_price = o_price;
        this.quantity = quantity;
        this.o_date = o_date;
    }

    public String getO_id() {
        return o_id;
    }

    public void setO_id(String o_id) {
        this.o_id = o_id;
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

    public String getSch() {
        return sch;
    }

    public void setSch(String sch) {
        this.sch = sch;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_tel() {
        return user_tel;
    }

    public void setUser_tel(String user_tel) {
        this.user_tel = user_tel;
    }

    public String getS_id() {
        return s_id;
    }

    public void setS_id(String s_id) {
        this.s_id = s_id;
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
                "o_id='" + o_id + '\'' +
                ", o_name='" + o_name + '\'' +
                ", o_address='" + o_address + '\'' +
                ", o_tel='" + o_tel + '\'' +
                ", sch=" + sch +
                ", user_id=" + user_id +
                ", user_tel='" + user_tel + '\'' +
                ", s_id='" + s_id + '\'' +
                ", o_price=" + o_price +
                ", quantity=" + quantity +
                ", o_date=" + o_date +
                '}';
    }
}
