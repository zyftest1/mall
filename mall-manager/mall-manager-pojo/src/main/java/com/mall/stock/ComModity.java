package com.mall.stock;

public class ComModity {
    private String c_id;
    private String type_id;
    private String c_describe;

    public ComModity() {
    }

    public ComModity(String c_id, String type_id, String c_describe) {
        this.c_id = c_id;
        this.type_id = type_id;
        this.c_describe = c_describe;
    }

    public String getC_id() {
        return c_id;
    }

    public void setC_id(String c_id) {
        this.c_id = c_id;
    }

    public String getType_id() {
        return type_id;
    }

    public void setType_id(String type_id) {
        this.type_id = type_id;
    }

    public String getC_describe() {
        return c_describe;
    }

    public void setC_describe(String c_describe) {
        this.c_describe = c_describe;
    }

    @Override
    public String toString() {
        return "ComModity{" +
                "c_id='" + c_id + '\'' +
                ", type_id='" + type_id + '\'' +
                ", c_describe='" + c_describe + '\'' +
                '}';
    }
}
