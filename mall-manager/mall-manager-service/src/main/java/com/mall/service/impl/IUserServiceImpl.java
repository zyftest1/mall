package com.mall.service.impl;

import com.mall.service.BsUserAccount;
import com.mall.service.IUserDao;
import com.mall.service.IUserService;

public class IUserServiceImpl implements IUserService {
    @Override
    public BsUserAccount findBsUserAccountByName(String bsName) {
        IUserDao userDao = new IUserDaoImpl();
        BsUserAccount bsUserAccount = null;
        bsUserAccount = userDao.selectBsUserAccountByName(bsName);
        return bsUserAccount;
    }
}
