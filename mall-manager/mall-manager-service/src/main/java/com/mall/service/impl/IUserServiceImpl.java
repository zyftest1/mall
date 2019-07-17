package com.mall.service.impl;

import com.mall.service.BsUserAccount;
import com.mall.service.IUserDao;
import com.mall.service.IUserService;

import java.util.List;

public class IUserServiceImpl implements IUserService {
    @Override
    public BsUserAccount findBsUserAccountByName(String bsName) {
        IUserDao userDao = new IUserDaoImpl();
        BsUserAccount bsUserAccount = null;
        bsUserAccount = userDao.selectBsUserAccountByName(bsName);
        return bsUserAccount;
    }

    @Override
    public void addBsUserAccount(BsUserAccount bsUserAccount) {

    }

    @Override
    public List<String> findBsUserAccountColumnListAll() {
        return null;
    }
}
