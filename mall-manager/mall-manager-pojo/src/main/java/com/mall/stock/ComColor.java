package com.mall.stock;

public class ComColor {
    private String color_id;
    private String color_describe;

    public ComColor() {
    }

    public ComColor(String color_id, String color_describe) {
        this.color_id = color_id;
        this.color_describe = color_describe;
    }

    public String getColor_id() {
        return color_id;
    }

    public void setColor_id(String color_id) {
        this.color_id = color_id;
    }

    @Override
    public String toString() {
        return "ComColor{" +
                "color_id='" + color_id + '\'' +
                ", color_describe='" + color_describe + '\'' +
                '}';
    }

    public String getColor_describe() {
        return color_describe;
    }

    public void setColor_describe(String color_describe) {
        this.color_describe = color_describe;
    }
}
