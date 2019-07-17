package com.mall.service;

import java.sql.SQLException;
import java.util.List;

public interface IUserDao {
    public  void insertBsUserAccount(BsUserAccount bsUserAccount);

    public void deleteBsUserAccount(String  bsName);

    public void modifyBsUserAccount(BsUserAccount bsUserAccount,String bsName);


    public List<String> selectColumnListAll() throws SQLException;

    public BsUserAccount selectBsUserAccountByName(String bsName,String password);
    public BsUserAccount selectBsUserAccountByName(String bsName);





}
