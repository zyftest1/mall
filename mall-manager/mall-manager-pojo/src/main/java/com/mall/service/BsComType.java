package com.mall.service;

public class BsComType {
    private String typeID;
    private String describe;
    private String style;

    public BsComType() {
    }

    public BsComType(String typeID, String describe, String style) {
        this.typeID = typeID;
        this.describe = describe;
        this.style = style;
    }

    @Override
    public String toString() {
        return "BsComType{" +
                "typeID='" + typeID + '\'' +
                ", describe='" + describe + '\'' +
                ", style='" + style + '\'' +
                '}';
    }

    public String getTypeID() {
        return typeID;
    }

    public void setTypeID(String typeID) {
        this.typeID = typeID;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }
}
