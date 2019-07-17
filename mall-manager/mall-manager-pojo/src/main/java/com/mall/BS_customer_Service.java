package com.mall;

import java.util.Date;

public class BS_customer_Service {
    private String cs_ID;
    private int user_ID;
    private String user_name;
    private String cs_content;
    private Date cs_date;

    public BS_customer_Service() {
    }

    public BS_customer_Service(String cs_ID, int user_ID, String user_name, String cs_content, Date cs_date) {
        this.cs_ID = cs_ID;
        this.user_ID = user_ID;
        this.user_name = user_name;
        this.cs_content = cs_content;
        this.cs_date = cs_date;
    }

    public String getCs_ID() {
        return cs_ID;
    }

    public void setCs_ID(String cs_ID) {
        this.cs_ID = cs_ID;
    }

    public int getUser_ID() {
        return user_ID;
    }

    public void setUser_ID(int user_ID) {
        this.user_ID = user_ID;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getCs_content() {
        return cs_content;
    }

    public void setCs_content(String cs_content) {
        this.cs_content = cs_content;
    }

    public Date getCs_date() {
        return cs_date;
    }

    public void setCs_date(Date cs_date) {
        this.cs_date = cs_date;
    }

    @Override
    public String toString() {
        return "BS_customer_Service{" +
                "cs_ID='" + cs_ID + '\'' +
                ", user_ID=" + user_ID +
                ", user_name='" + user_name + '\'' +
                ", cs_content='" + cs_content + '\'' +
                ", cs_date=" + cs_date +
                '}';
    }
}
