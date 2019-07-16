package com.mall.service;

import java.util.Date;

public class BsUserJournal {
    private String dealID;
    private int ID;
    private String bsName;
    private String sID;
    private String addID;
    private String oID;
    private Date date;
    private double pay;

    public BsUserJournal(String dealID, int ID, String bsName, String sID, String addID, String oID, Date date, double pay) {
        this.dealID = dealID;
        this.ID = ID;
        this.bsName = bsName;
        this.sID = sID;
        this.addID = addID;
        this.oID = oID;
        this.date = date;
        this.pay = pay;
    }

    public String getDealID() {
        return dealID;
    }

    public void setDealID(String dealID) {
        this.dealID = dealID;
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

    public String getsID() {
        return sID;
    }

    public void setsID(String sID) {
        this.sID = sID;
    }

    public String getAddID() {
        return addID;
    }

    public void setAddID(String addID) {
        this.addID = addID;
    }

    public String getoID() {
        return oID;
    }

    public void setoID(String oID) {
        this.oID = oID;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public double getPay() {
        return pay;
    }

    public void setPay(double pay) {
        this.pay = pay;
    }

    @Override
    public String toString() {
        return "BsUserJournal{" +
                "dealID='" + dealID + '\'' +
                ", ID=" + ID +
                ", bsName='" + bsName + '\'' +
                ", sID='" + sID + '\'' +
                ", addID='" + addID + '\'' +
                ", oID='" + oID + '\'' +
                ", date=" + date +
                ", pay=" + pay +
                '}';
    }
}
