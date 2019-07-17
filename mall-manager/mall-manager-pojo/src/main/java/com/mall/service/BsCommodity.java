package com.mall.service;

import java.util.Date;

public class BsCommodity {
    private String cID;
    private String typeID;
    private String matID;
    private String brandID;
    private String edition;
    private Date date;
    private String describe;

    public BsCommodity(String cID, String typeID, String matID, String brandID, String edition, Date date, String describe) {
        this.cID = cID;
        this.typeID = typeID;
        this.matID = matID;
        this.brandID = brandID;
        this.edition = edition;
        this.date = date;
        this.describe = describe;
    }

    public String getcID() {
        return cID;
    }

    public void setcID(String cID) {
        this.cID = cID;
    }

    public String getTypeID() {
        return typeID;
    }

    public void setTypeID(String typeID) {
        this.typeID = typeID;
    }

    public String getMatID() {
        return matID;
    }

    public void setMatID(String matID) {
        this.matID = matID;
    }

    public String getBrandID() {
        return brandID;
    }

    public void setBrandID(String brandID) {
        this.brandID = brandID;
    }

    public String getEdition() {
        return edition;
    }

    public void setEdition(String edition) {
        this.edition = edition;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    @Override
    public String toString() {
        return "BsCommodity{" +
                "cID='" + cID + '\'' +
                ", typeID='" + typeID + '\'' +
                ", matID='" + matID + '\'' +
                ", brandID='" + brandID + '\'' +
                ", edition='" + edition + '\'' +
                ", date='" + date + '\'' +
                ", describe='" + describe + '\'' +
                '}';
    }
}
