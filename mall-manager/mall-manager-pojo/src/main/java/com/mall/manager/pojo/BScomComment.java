package com.mall.manager.pojo;

public class BScomComment {
    public BScomComment() {
    }

    private String com_ID;
    private int user_id;
    private String user_name;
    private String content;
    private String comment_date;
    private String s_ID;

    public String getCom_ID() {
        return com_ID;
    }

    public void setCom_ID(String comID) {
        this.com_ID = comID;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getComment_date() {
        return comment_date;
    }

    public void setComment_date(String comment_date) {
        this.comment_date = comment_date;
    }

    public String getS_ID() {
        return s_ID;
    }

    public void setS_ID(String s_ID) {
        this.s_ID = s_ID;
    }

    @Override
    public String toString() {
        return "BScomComment{" +
                "comID='" + com_ID + '\'' +
                ", user_id=" + user_id +
                ", user_name='" + user_name + '\'' +
                ", content='" + content + '\'' +
                ", comment_date='" + comment_date + '\'' +
                ", s_ID='" + s_ID + '\'' +
                '}';
    }
}
