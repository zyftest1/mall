package com.mall.service;

public class BsSchedule {
    private int schID;
    private String state;
    private String describe;

    public BsSchedule() {
    }

    public BsSchedule(int schID, String state, String describe) {
        this.schID = schID;
        this.state = state;
        this.describe = describe;
    }

    public int getSchID() {
        return schID;
    }

    public void setSchID(int schID) {
        this.schID = schID;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    @Override
    public String toString() {
        return "BsSchedule{" +
                "schID=" + schID +
                ", state='" + state + '\'' +
                ", describe='" + describe + '\'' +
                '}';
    }
}
