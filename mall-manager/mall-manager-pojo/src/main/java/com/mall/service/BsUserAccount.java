package com.mall.service;

import java.util.Date;

/**
 *
 */
public class BsUserAccount {
    private int ID;
    private String bsName;
    private String password;
    private String tel;
    private String email;
    private String head;
    private String payKey;
    private String name;
    private int age;
    private String sex;
    private String address;
    private Date createDate;
    private String idCard;
    private Date birthday;
    private String job;

    public BsUserAccount() {
    }

    public BsUserAccount(int ID, String bsName, String password, String tel, String email, String head, String payKey, String name, int age, String sex, String address, Date createDate, String idCard, Date birthday, String job) {
        this.ID = ID;
        this.bsName = bsName;
        this.password = password;
        this.tel = tel;
        this.email = email;
        this.head = head;
        this.payKey = payKey;
        this.name = name;
        this.age = age;
        this.sex = sex;
        this.address = address;
        this.createDate = createDate;
        this.idCard = idCard;
        this.birthday = birthday;
        this.job = job;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getBsName() {
        return bsName;
    }

    public void setBsName(String bsName) {
        this.bsName = bsName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getHead() {
        return head;
    }

    public void setHead(String head) {
        this.head = head;
    }

    public String getPayKey() {
        return payKey;
    }

    public void setPayKey(String payKey) {
        this.payKey = payKey;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
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
        return "BsUserAccount{" +
                "ID=" + ID +
                ", bsName='" + bsName + '\'' +
                ", password='" + password + '\'' +
                ", tel='" + tel + '\'' +
                ", email='" + email + '\'' +
                ", head='" + head + '\'' +
                ", payKey='" + payKey + '\'' +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", sex='" + sex + '\'' +
                ", address='" + address + '\'' +
                ", createDate=" + createDate +
                ", idCard='" + idCard + '\'' +
                ", birthday=" + birthday +
                ", job='" + job + '\'' +
                '}';
    }
}
