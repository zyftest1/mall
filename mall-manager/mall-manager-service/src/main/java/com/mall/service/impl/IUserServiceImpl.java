package com.mall.service.impl;


import com.mall.service.BsUserAccount;
import com.mall.service.IUserDao;
import com.mall.service.test.IUserService;

import java.sql.SQLException;
import java.util.List;

public class IUserServiceImpl implements IUserService {
    @Override
    public void addBsUserAccount(BsUserAccount bsUserAccount) {
        IUserDao userDao = new IUserDaoImpl();
        userDao.insertBsUserAccount(bsUserAccount);
    }

    @Override
    public void deleteBsUserAccount(String bsName) {
        IUserDao userDao = new IUserDaoImpl();
        userDao.deleteBsUserAccount(bsName);
    }

    @Override
    public void modifyBsUserAccount(BsUserAccount bsUserAccount,String bsName) {
        IUserDao userDao = new IUserDaoImpl();
        userDao.modifyBsUserAccount(bsUserAccount,bsName);
    }

    @Override
    public BsUserAccount findBsUserAccountByName(String bsName,String password) {
        IUserDao userDao = new IUserDaoImpl();
        BsUserAccount bsUserAccount = null;
        bsUserAccount = userDao.selectBsUserAccountByName(bsName,password);
        return bsUserAccount;
    }

    @Override
    public BsUserAccount findBsUserAccountByName(String bsName) {
        IUserDao userDao = new IUserDaoImpl();
        BsUserAccount bsUserAccount = null;
        bsUserAccount = userDao.selectBsUserAccountByName(bsName);
        return bsUserAccount;
    }


    @Override
    public List<String> findBsUserAccountColumnListAll() throws SQLException {
        IUserDao userDao = new IUserDaoImpl();
        List<String> bsUserAccountList = null;
        bsUserAccountList = userDao.selectColumnListAll();
        System.out.println(bsUserAccountList);
        return bsUserAccountList;
    }
}
