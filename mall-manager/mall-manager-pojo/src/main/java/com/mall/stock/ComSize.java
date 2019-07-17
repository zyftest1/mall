package com.mall.stock;

public class ComSize {
    private String size;
    private String size_describe;

    public ComSize() {
    }

    public ComSize(String size, String size_describe) {
        this.size = size;
        this.size_describe = size_describe;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getSize_describe() {
        return size_describe;
    }

    public void setSize_describe(String size_describe) {
        this.size_describe = size_describe;
    }

    @Override
    public String toString() {
        return "ComSize{" +
                "size='" + size + '\'' +
                ", size_describe='" + size_describe + '\'' +
                '}';
    }
}
