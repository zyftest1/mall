package com.mall.service;

import java.util.Date;

public class BsComComment {
    private String comID;
    private int ID;
    private String bsName;
    private String content;
    private Date date;
    private String sID;

    public BsComComment(String comID, int ID, String bsName, String content, Date date, String sID) {
        this.comID = comID;
        this.ID = ID;
        this.bsName = bsName;
        this.content = content;
        this.date = date;
        this.sID = sID;
    }

    @Override
    public String toString() {
        return "BsComComment{" +
                "comID='" + comID + '\'' +
                ", ID='" + ID + '\'' +
                ", bsName='" + bsName + '\'' +
                ", content='" + content + '\'' +
                ", date=" + date +
                ", sID='" + sID + '\'' +
                '}';
    }

    public String getComID() {
        return comID;
    }

    public void setComID(String comID) {
        this.comID = comID;
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

    public String getsID() {
        return sID;
    }

    public void setsID(String sID) {
        this.sID = sID;
    }
}
