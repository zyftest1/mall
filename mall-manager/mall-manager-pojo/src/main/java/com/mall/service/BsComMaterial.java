package com.mall.service;

public class BsComMaterial {
    private String matID;
    private String cloth;
    private String origin;
    private String weight;

    public BsComMaterial(String matID, String cloth, String origin, String weight) {
        this.matID = matID;
        this.cloth = cloth;
        this.origin = origin;
        this.weight = weight;
    }

    @Override
    public String toString() {
        return "BsComMaterial{" +
                "matID='" + matID + '\'' +
                ", cloth='" + cloth + '\'' +
                ", origin='" + origin + '\'' +
                ", weight='" + weight + '\'' +
                '}';
    }

    public String getMatID() {
        return matID;
    }

    public void setMatID(String matID) {
        this.matID = matID;
    }

    public String getCloth() {
        return cloth;
    }

    public void setCloth(String cloth) {
        this.cloth = cloth;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }
}
