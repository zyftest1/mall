package com.mall.service;

public class BsAdministrators {
    private String aID;
    private String aKey;
    private String aName;
    private String aTel;
    private String aEmail;
    private String aHead;

    public BsAdministrators(String aID, String aKey, String aName, String aTel, String aEmail, String aHead) {
        this.aID = aID;
        this.aKey = aKey;
        this.aName = aName;
        this.aTel = aTel;
        this.aEmail = aEmail;
        this.aHead = aHead;
    }

    public String getaID() {
        return aID;
    }

    public void setaID(String aID) {
        this.aID = aID;
    }

    public String getaKey() {
        return aKey;
    }

    public void setaKey(String aKey) {
        this.aKey = aKey;
    }

    public String getaName() {
        return aName;
    }

    public void setaName(String aName) {
        this.aName = aName;
    }

    public String getaTel() {
        return aTel;
    }

    public void setaTel(String aTel) {
        this.aTel = aTel;
    }

    public String getaEmail() {
        return aEmail;
    }

    public void setaEmail(String aEmail) {
        this.aEmail = aEmail;
    }

    public String getaHead() {
        return aHead;
    }

    public void setaHead(String aHead) {
        this.aHead = aHead;
    }

    @Override
    public String toString() {
        return "BsAdministrators{" +
                "aID='" + aID + '\'' +
                ", aKey='" + aKey + '\'' +
                ", aName='" + aName + '\'' +
                ", aTel='" + aTel + '\'' +
                ", aEmail='" + aEmail + '\'' +
                ", aHead='" + aHead + '\'' +
                '}';
    }
}
