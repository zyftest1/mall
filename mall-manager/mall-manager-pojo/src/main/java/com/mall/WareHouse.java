package com.mall;

public class WareHouse {
    private int ware_id;
    private String ware_type;
    private String ware_address;
    private String ware_size;

    public WareHouse() {
    }

    public WareHouse(int ware_id, String ware_type, String ware_address, String ware_size) {
        this.ware_id = ware_id;
        this.ware_type = ware_type;
        this.ware_address = ware_address;
        this.ware_size = ware_size;
    }

    public int getWare_id() {
        return ware_id;
    }

    public void setWare_id(int ware_id) {
        this.ware_id = ware_id;
    }

    public String getWare_type() {
        return ware_type;
    }

    public void setWare_type(String ware_type) {
        this.ware_type = ware_type;
    }

    public String getWare_address() {
        return ware_address;
    }

    public void setWare_address(String ware_address) {
        this.ware_address = ware_address;
    }

    public String getWare_size() {
        return ware_size;
    }

    public void setWare_size(String ware_size) {
        this.ware_size = ware_size;
    }

    @Override
    public String toString() {
        return "WareHouse{" +
                "ware_id=" + ware_id +
                ", ware_type='" + ware_type + '\'' +
                ", ware_address='" + ware_address + '\'' +
                ", ware_size='" + ware_size + '\'' +
                '}';
    }
}
