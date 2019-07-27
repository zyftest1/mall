package com.mall;

public class Area {
    private int id;
    private int areaid;
    private String area;
    private int cityid;

    @Override
    public String toString() {
        return "Area{" +
                "id=" + id +
                ", areaid=" + areaid +
                ", area='" + area + '\'' +
                ", cityid=" + cityid +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAreaid() {
        return areaid;
    }

    public void setAreaid(int areaid) {
        this.areaid = areaid;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public int getCityid() {
        return cityid;
    }

    public void setCityid(int cityid) {
        this.cityid = cityid;
    }

    public Area(int areaid, String area, int cityid) {
        this.areaid = areaid;
        this.area = area;
        this.cityid = cityid;
    }

    public Area(int id, int areaid, String area, int cityid) {
        this.id = id;
        this.areaid = areaid;
        this.area = area;
        this.cityid = cityid;
    }

    public Area() {
    }
}
