package com.mall.service;

import java.util.List;

public interface IUserService {
    BsUserAccount findBsUserAccountByName(String bsName);

    void addBsUserAccount(BsUserAccount bsUserAccount);

    List<String> findBsUserAccountColumnListAll();
}
