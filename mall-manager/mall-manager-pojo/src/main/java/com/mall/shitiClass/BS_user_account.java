package com.mall.shitiClass;

import java.util.Date;

public class BS_user_account {
    private int user_ID;
//    private String BS_number;
    private String user_name;
    private String user_password;
    private String user_tel;
    private String user_email;
    private String user_head;
    private String user_pay_Key;
    private String user_true_name;
    private int age;
    private String sex;
    private String user_address;
    private Date user_create_Date;
    private String user_IDcard;
    private Date birthday;
    private String job;

    public BS_user_account() {
    }

    public BS_user_account(int user_ID, String user_name, String user_tel, String user_email, String user_address) {
        this.user_ID = user_ID;
        this.user_name = user_name;
        this.user_tel = user_tel;
        this.user_email = user_email;
        this.user_address = user_address;
    }

    public BS_user_account(int user_ID, String user_name, String user_password, String user_tel, String user_email, String user_head, String user_pay_Key, String user_true_name, int age, String sex, String user_address, Date user_create_Date, String user_IDcard, Date birthday, String job) {
        this.user_ID = user_ID;
        this.user_name = user_name;
        this.user_password = user_password;
        this.user_tel = user_tel;
        this.user_email = user_email;
        this.user_head = user_head;
        this.user_pay_Key = user_pay_Key;
        this.user_true_name = user_true_name;
        this.age = age;
        this.sex = sex;
        this.user_address = user_address;
        this.user_create_Date = user_create_Date;
        this.user_IDcard = user_IDcard;
        this.birthday = birthday;
        this.job = job;
    }

    public int getUser_ID() {
        return user_ID;
    }

    public void setUser_ID(int user_ID) {
        this.user_ID = user_ID;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_password() {
        return user_password;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public String getUser_tel() {
        return user_tel;
    }

    public void setUser_tel(String user_tel) {
        this.user_tel = user_tel;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }

    public String getUser_head() {
        return user_head;
    }

    public void setUser_head(String user_head) {
        this.user_head = user_head;
    }

    public String getUser_pay_Key() {
        return user_pay_Key;
    }

    public void setUser_pay_Key(String user_pay_Key) {
        this.user_pay_Key = user_pay_Key;
    }

    public String getUser_true_name() {
        return user_true_name;
    }

    public void setUser_true_name(String user_true_name) {
        this.user_true_name = user_true_name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getUser_address() {
        return user_address;
    }

    public void setUser_address(String user_address) {
        this.user_address = user_address;
    }

    public Date getUser_createDate() {
        return user_create_Date;
    }

    public void setUser_createDate(Date user_create_Date) {
        this.user_create_Date = user_create_Date;
    }

    public String getUser_IDcard() {
        return user_IDcard;
    }

    public void setUser_IDcard(String user_IDcard) {
        this.user_IDcard = user_IDcard;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }


    @Override
    public String toString() {
        return "BS_user_account{" +
                "user_ID=" + user_ID +
                ", user_name='" + user_name + '\'' +
                ", user_password='" + user_password + '\'' +
                ", user_tel='" + user_tel + '\'' +
                ", user_email='" + user_email + '\'' +
                ", user_head='" + user_head + '\'' +
                ", user_pay_Key='" + user_pay_Key + '\'' +
                ", user_true_name='" + user_true_name + '\'' +
                ", age=" + age +
                ", sex='" + sex + '\'' +
                ", user_address='" + user_address + '\'' +
                ", user_create_Date=" + user_create_Date +
                ", user_IDcard='" + user_IDcard + '\'' +
                ", birthday=" + birthday +
                ", job='" + job + '\'' +
                '}';
    }
}