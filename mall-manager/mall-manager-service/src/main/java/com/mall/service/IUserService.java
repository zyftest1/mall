package com.mall.service;



import com.mall.service.BsUserAccount;

import java.sql.SQLException;
import java.util.List;

public interface IUserService {
    public void addBsUserAccount(BsUserAccount bsUserAccount);

    public void deleteBsUserAccount(String bsName);

    public void modifyBsUserAccount(BsUserAccount bsUserAccount,String bsName);

    public BsUserAccount findBsUserAccountByName(String bsName,String password);
    public BsUserAccount findBsUserAccountByName(String bsName);

    public List<String> findBsUserAccountColumnListAll() throws SQLException;




}
