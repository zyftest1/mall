package com.mall.manager.pojo;

public class BScomMaterial {
    public BScomMaterial() {
    }

    private String mat_ID;
    private String cloth;
    private String origin;
    private double weigt;

    public String getMat_ID() {
        return mat_ID;
    }

    public void setMat_ID(String mat_ID) {
        this.mat_ID = mat_ID;
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

    public double getWeigt() {
        return weigt;
    }

    public void setWeigt(double weigt) {
        this.weigt = weigt;
    }

    @Override
    public String toString() {
        return "BScomMaterial{" +
                "mat_ID='" + mat_ID + '\'' +
                ", cloth='" + cloth + '\'' +
                ", origin='" + origin + '\'' +
                ", weigt=" + weigt +
                '}';
    }
}
