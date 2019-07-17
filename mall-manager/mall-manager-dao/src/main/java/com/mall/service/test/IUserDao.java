package com.mall.service.test;

import com.mall.BsUserAccount;

public interface IUserDao {
    public BsUserAccount selectBsUserAccountByName(String bsName);
}
