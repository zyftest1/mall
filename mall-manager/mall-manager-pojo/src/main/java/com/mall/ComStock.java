package com.mall;

public class ComStock {
    private String sID;
    private String cID;
    private String size;
    private int stock;
    private double price;
    private String describe;
    private String showPicture;

    public ComStock() {
    }

    public String getsID() {
        return sID;
    }

    public void setsID(String sID) {
        this.sID = sID;
    }

    public String getcID() {
        return cID;
    }

    public void setcID(String cID) {
        this.cID = cID;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getShowPicture() {
        return showPicture;
    }

    public void setShowPicture(String showPicture) {
        this.showPicture = showPicture;
    }

    @Override
    public String toString() {
        return "ComStock{" +
                "sID='" + sID + '\'' +
                ", cID='" + cID + '\'' +
                ", size='" + size + '\'' +
                ", stock=" + stock +
                ", price=" + price +
                ", describe='" + describe + '\'' +
                ", showPicture='" + showPicture + '\'' +
                '}';
    }
}
