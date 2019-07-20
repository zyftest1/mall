package com.mall.shitiClass;

import java.util.Date;

public class BS_user_deal_journal {
        private String deal_ID;
        private int ID;
        private String BS_name;
        private String s_ID;
        private String add_ID;
        private String o_ID;
        private Date date;
        private int pay;

    public BS_user_deal_journal() {
    }

    public BS_user_deal_journal(String deal_ID, int ID, String BS_name, String s_ID, String add_ID, String o_ID, Date date, int pay) {
        this.deal_ID = deal_ID;
        this.ID = ID;
        this.BS_name = BS_name;
        this.s_ID = s_ID;
        this.add_ID = add_ID;
        this.o_ID = o_ID;
        this.date = date;
        this.pay = pay;
    }

    public String getDeal_ID() {
        return deal_ID;
    }

    public void setDeal_ID(String deal_ID) {
        this.deal_ID = deal_ID;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getBS_name() {
        return BS_name;
    }

    public void setBS_name(String BS_name) {
        this.BS_name = BS_name;
    }

    public String getS_ID() {
        return s_ID;
    }

    public void setS_ID(String s_ID) {
        this.s_ID = s_ID;
    }

    public String getAdd_ID() {
        return add_ID;
    }

    public void setAdd_ID(String add_ID) {
        this.add_ID = add_ID;
    }

    public String getO_ID() {
        return o_ID;
    }

    public void setO_ID(String o_ID) {
        this.o_ID = o_ID;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getPay() {
        return pay;
    }

    public void setPay(int pay) {
        this.pay = pay;
    }
}
