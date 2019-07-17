package com.mall.service.test.impl;

import com.mall.BsUserAccount;
import com.mall.service.test.IUserDao;
import com.mall.service.test.IUserService;

public class IUserServiceImpl implements IUserService {
    @Override
    public BsUserAccount findBsUserAccountByName(String bsName) {
        IUserDao userDao = new IUserDaoImpl();
        BsUserAccount bsUserAccount = null;
        bsUserAccount = userDao.selectBsUserAccountByName(bsName);
        return bsUserAccount;
    }
}
