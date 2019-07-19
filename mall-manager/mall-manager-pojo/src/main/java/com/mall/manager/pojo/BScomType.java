package com.mall.manager.pojo;

public class BScomType {
    public BScomType() {
    }

    private String type_ID;
    private String type_describe;
    private String style;

    public String getType_ID() {
        return type_ID;
    }

    public void setType_ID(String type_ID) {
        this.type_ID = type_ID;
    }

    public String getType_describe() {
        return type_describe;
    }

    public void setType_describe(String type_describe) {
        this.type_describe = type_describe;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    @Override
    public String toString() {
        return "BScomType{" +
                "type_ID='" + type_ID + '\'' +
                ", type_describe='" + type_describe + '\'' +
                ", style='" + style + '\'' +
                '}';
    }
}
