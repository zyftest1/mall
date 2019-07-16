package com.mall.service;

import java.util.Date;

public class BsCustomerService {
    private String csID;
    private int ID;
    private String bsName;
    private String content;
    private Date date;

    public BsCustomerService(String csID, int ID, String bsName, String content, Date date) {
        this.csID = csID;
        this.ID = ID;
        this.bsName = bsName;
        this.content = content;
        this.date = date;
    }

    public String getCsID() {
        return csID;
    }

    public void setCsID(String csID) {
        this.csID = csID;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getBsName() {
        return bsName;
    }

    public void setBsName(String bsName) {
        this.bsName = bsName;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "BsCustomerService{" +
                "csID='" + csID + '\'' +
                ", ID='" + ID + '\'' +
                ", bsName='" + bsName + '\'' +
                ", content='" + content + '\'' +
                ", date=" + date +
                '}';
    }
}
