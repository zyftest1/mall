package com.mall.shitiClass;

public class BS_schedule {
    private int sch_id;
    private String state;
    private String sch_describe;

    public BS_schedule() {
    }

    public BS_schedule(int sch_id, String state, String sch_describe) {
        this.sch_id = sch_id;
        this.state = state;
        this.sch_describe = sch_describe;
    }

    public int getSch_id() {
        return sch_id;
    }

    public void setSch_id(int sch_id) {
        this.sch_id = sch_id;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getSch_describe() {
        return sch_describe;
    }

    public void setSch_describe(String sch_describe) {
        this.sch_describe = sch_describe;
    }

    @Override
    public String toString() {
        return "BS_schedule{" +
                "sch_id=" + sch_id +
                ", state='" + state + '\'' +
                ", sch_describe='" + sch_describe + '\'' +
                '}';
    }
}
